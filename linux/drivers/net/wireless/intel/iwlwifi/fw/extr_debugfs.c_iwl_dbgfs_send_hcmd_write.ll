; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_debugfs.c_iwl_dbgfs_send_hcmd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/fw/extr_debugfs.c_iwl_dbgfs_send_hcmd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_fw_runtime = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.iwl_host_cmd*)*, i32 (i32)* }
%struct.iwl_host_cmd = type { i32*, i32, i32*, i8* }
%struct.hcmd_write_data = type { i32, i32, i32, i32 }

@EIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"host command data size does not match header length\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_fw_runtime*, i8*, i64)* @iwl_dbgfs_send_hcmd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_send_hcmd_write(%struct.iwl_fw_runtime* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.iwl_fw_runtime*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hcmd_write_data*, align 8
  %12 = alloca %struct.iwl_host_cmd, align 8
  store %struct.iwl_fw_runtime* %0, %struct.iwl_fw_runtime** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 24, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = sub i64 %13, 1
  %15 = udiv i64 %14, 2
  store i64 %15, i64* %9, align 8
  %16 = bitcast %struct.iwl_host_cmd* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 32, i1 false)
  %17 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %3
  %22 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %23 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (i32)*, i32 (i32)** %25, align 8
  %27 = icmp ne i32 (i32)* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (i32)*, i32 (i32)** %32, align 8
  %34 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %33(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = load i64, i64* @EIO, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %4, align 8
  br label %162

42:                                               ; preds = %28, %21, %3
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, i64* %7, align 8
  %49 = icmp ugt i64 %48, 4096
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %42
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %4, align 8
  br label %162

53:                                               ; preds = %47
  %54 = load i64, i64* %9, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.hcmd_write_data* @kmalloc(i64 %54, i32 %55)
  store %struct.hcmd_write_data* %56, %struct.hcmd_write_data** %11, align 8
  %57 = load %struct.hcmd_write_data*, %struct.hcmd_write_data** %11, align 8
  %58 = icmp ne %struct.hcmd_write_data* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i64, i64* @ENOMEM, align 8
  %61 = sub i64 0, %60
  store i64 %61, i64* %4, align 8
  br label %162

62:                                               ; preds = %53
  %63 = load %struct.hcmd_write_data*, %struct.hcmd_write_data** %11, align 8
  %64 = bitcast %struct.hcmd_write_data* %63 to i32*
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @hex2bin(i32* %64, i8* %65, i64 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %151

71:                                               ; preds = %62
  %72 = load %struct.hcmd_write_data*, %struct.hcmd_write_data** %11, align 8
  %73 = getelementptr inbounds %struct.hcmd_write_data, %struct.hcmd_write_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @be32_to_cpu(i32 %74)
  %76 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %12, i32 0, i32 3
  store i8* %75, i8** %76, align 8
  %77 = load %struct.hcmd_write_data*, %struct.hcmd_write_data** %11, align 8
  %78 = getelementptr inbounds %struct.hcmd_write_data, %struct.hcmd_write_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @be32_to_cpu(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %12, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = load %struct.hcmd_write_data*, %struct.hcmd_write_data** %11, align 8
  %84 = getelementptr inbounds %struct.hcmd_write_data, %struct.hcmd_write_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @be16_to_cpu(i32 %85)
  %87 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %12, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %86, i32* %89, align 4
  %90 = load %struct.hcmd_write_data*, %struct.hcmd_write_data** %11, align 8
  %91 = getelementptr inbounds %struct.hcmd_write_data, %struct.hcmd_write_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %12, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %92, i32* %95, align 4
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %12, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = add i64 %97, %103
  %105 = add i64 %104, 1
  %106 = icmp ne i64 %96, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %71
  %108 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %109 = call i32 @IWL_ERR(%struct.iwl_fw_runtime* %108, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %110 = load i64, i64* @EINVAL, align 8
  %111 = sub i64 0, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %10, align 4
  br label %151

113:                                              ; preds = %71
  %114 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %115 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = icmp ne %struct.TYPE_2__* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %113
  %119 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %120 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (i32, %struct.iwl_host_cmd*)*, i32 (i32, %struct.iwl_host_cmd*)** %122, align 8
  %124 = icmp ne i32 (i32, %struct.iwl_host_cmd*)* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %127 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32 (i32, %struct.iwl_host_cmd*)*, i32 (i32, %struct.iwl_host_cmd*)** %129, align 8
  %131 = load %struct.iwl_fw_runtime*, %struct.iwl_fw_runtime** %5, align 8
  %132 = getelementptr inbounds %struct.iwl_fw_runtime, %struct.iwl_fw_runtime* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %130(i32 %133, %struct.iwl_host_cmd* %12)
  store i32 %134, i32* %10, align 4
  br label %138

135:                                              ; preds = %118, %113
  %136 = load i32, i32* @EPERM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %135, %125
  %139 = load i32, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  br label %151

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %12, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CMD_WANT_SKB, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %142
  %149 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %12)
  br label %150

150:                                              ; preds = %148, %142
  br label %151

151:                                              ; preds = %150, %141, %107, %70
  %152 = load %struct.hcmd_write_data*, %struct.hcmd_write_data** %11, align 8
  %153 = call i32 @kfree(%struct.hcmd_write_data* %152)
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = sext i32 %154 to i64
  br label %160

158:                                              ; preds = %151
  %159 = load i64, i64* %7, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i64 [ %157, %156 ], [ %159, %158 ]
  store i64 %161, i64* %4, align 8
  br label %162

162:                                              ; preds = %160, %59, %50, %39
  %163 = load i64, i64* %4, align 8
  ret i64 %163
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.hcmd_write_data* @kmalloc(i64, i32) #2

declare dso_local i32 @hex2bin(i32*, i8*, i64) #2

declare dso_local i8* @be32_to_cpu(i32) #2

declare dso_local i32 @be16_to_cpu(i32) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_fw_runtime*, i8*) #2

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #2

declare dso_local i32 @kfree(%struct.hcmd_write_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
