; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_vpd_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_vpd_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_vpd_data = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vpd_params = type { i32, i32, i32, i32, i32 }

@CUDBG_VPD_VER_LEN = common dso_local global i32 0, align 4
@EEPROMVSIZE = common dso_local global i32 0, align 4
@CUDBG_SCFG_VER_ADDR = common dso_local global i32 0, align 4
@CUDBG_SCFG_VER_LEN = common dso_local global i32 0, align 4
@CUDBG_VPD_PF_SIZE = common dso_local global i32 0, align 4
@CUDBG_VPD_VER_ADDR = common dso_local global i32 0, align 4
@SERNUM_LEN = common dso_local global i64 0, align 8
@PN_LEN = common dso_local global i64 0, align 8
@MACADDR_LEN = common dso_local global i64 0, align 8
@ID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_vpd_data(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.cudbg_vpd_data*, align 8
  %16 = alloca %struct.vpd_params, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %20 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %21 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %20, i32 0, i32 0
  %22 = load %struct.adapter*, %struct.adapter** %21, align 8
  store %struct.adapter* %22, %struct.adapter** %8, align 8
  %23 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  %24 = load i32, i32* @CUDBG_VPD_VER_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = bitcast %struct.vpd_params* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 20, i1 false)
  %30 = load %struct.adapter*, %struct.adapter** %8, align 8
  %31 = call i32 @t4_get_raw_vpd_params(%struct.adapter* %30, %struct.vpd_params* %16)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* %17, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

36:                                               ; preds = %3
  %37 = load %struct.adapter*, %struct.adapter** %8, align 8
  %38 = call i32 @t4_get_fw_version(%struct.adapter* %37, i8* %14)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %17, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

43:                                               ; preds = %36
  %44 = load %struct.adapter*, %struct.adapter** %8, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EEPROMVSIZE, align 4
  %48 = call i32 @pci_set_vpd_size(i32 %46, i32 %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

53:                                               ; preds = %43
  %54 = load %struct.adapter*, %struct.adapter** %8, align 8
  %55 = load i32, i32* @CUDBG_SCFG_VER_ADDR, align 4
  %56 = load i32, i32* @CUDBG_SCFG_VER_LEN, align 4
  %57 = call i32 @cudbg_read_vpd_reg(%struct.adapter* %54, i32 %55, i32 %56, i8* %12)
  store i32 %57, i32* %18, align 4
  %58 = load %struct.adapter*, %struct.adapter** %8, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CUDBG_VPD_PF_SIZE, align 4
  %62 = call i32 @pci_set_vpd_size(i32 %60, i32 %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

67:                                               ; preds = %53
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %18, align 4
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

72:                                               ; preds = %67
  %73 = load %struct.adapter*, %struct.adapter** %8, align 8
  %74 = load i32, i32* @CUDBG_VPD_VER_ADDR, align 4
  %75 = load i32, i32* @CUDBG_VPD_VER_LEN, align 4
  %76 = call i32 @cudbg_read_vpd_reg(%struct.adapter* %73, i32 %74, i32 %75, i8* %28)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

81:                                               ; preds = %72
  %82 = load i32, i32* @CUDBG_VPD_VER_LEN, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %28, i64 %83
  store i8 0, i8* %84, align 1
  %85 = call i32 @kstrtouint(i8* %28, i32 0, i8* %13)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* %17, align 4
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

90:                                               ; preds = %81
  %91 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %92 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %93 = call i32 @cudbg_get_buff(%struct.cudbg_init* %91, %struct.cudbg_buffer* %92, i32 36, %struct.cudbg_buffer* %9)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %17, align 4
  store i32 %97, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.cudbg_vpd_data*
  store %struct.cudbg_vpd_data* %101, %struct.cudbg_vpd_data** %15, align 8
  %102 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %103 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %16, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* @SERNUM_LEN, align 8
  %108 = add nsw i64 %107, 1
  %109 = call i32 @memcpy(i32 %104, i32 %106, i64 %108)
  %110 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %111 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %16, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* @PN_LEN, align 8
  %116 = add nsw i64 %115, 1
  %117 = call i32 @memcpy(i32 %112, i32 %114, i64 %116)
  %118 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %119 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %16, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* @MACADDR_LEN, align 8
  %124 = add nsw i64 %123, 1
  %125 = call i32 @memcpy(i32 %120, i32 %122, i64 %124)
  %126 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %127 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.vpd_params, %struct.vpd_params* %16, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* @ID_LEN, align 8
  %132 = add nsw i64 %131, 1
  %133 = call i32 @memcpy(i32 %128, i32 %130, i64 %132)
  %134 = load i8, i8* %12, align 1
  %135 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %136 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %135, i32 0, i32 0
  store i8 %134, i8* %136, align 4
  %137 = load i8, i8* %13, align 1
  %138 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %139 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %138, i32 0, i32 1
  store i8 %137, i8* %139, align 1
  %140 = load i8, i8* %14, align 1
  %141 = call i32 @FW_HDR_FW_VER_MAJOR_G(i8 signext %140)
  %142 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %143 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load i8, i8* %14, align 1
  %145 = call i32 @FW_HDR_FW_VER_MINOR_G(i8 signext %144)
  %146 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %147 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  %148 = load i8, i8* %14, align 1
  %149 = call i32 @FW_HDR_FW_VER_MICRO_G(i8 signext %148)
  %150 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %151 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  %152 = load i8, i8* %14, align 1
  %153 = call i32 @FW_HDR_FW_VER_BUILD_G(i8 signext %152)
  %154 = load %struct.cudbg_vpd_data*, %struct.cudbg_vpd_data** %15, align 8
  %155 = getelementptr inbounds %struct.cudbg_vpd_data, %struct.cudbg_vpd_data* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %157 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %158 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %156, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %157)
  store i32 %158, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %159

159:                                              ; preds = %98, %96, %88, %79, %70, %65, %51, %41, %34
  %160 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @t4_get_raw_vpd_params(%struct.adapter*, %struct.vpd_params*) #3

declare dso_local i32 @t4_get_fw_version(%struct.adapter*, i8*) #3

declare dso_local i32 @pci_set_vpd_size(i32, i32) #3

declare dso_local i32 @cudbg_read_vpd_reg(%struct.adapter*, i32, i32, i8*) #3

declare dso_local i32 @kstrtouint(i8*, i32, i8*) #3

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #3

declare dso_local i32 @memcpy(i32, i32, i64) #3

declare dso_local i32 @FW_HDR_FW_VER_MAJOR_G(i8 signext) #3

declare dso_local i32 @FW_HDR_FW_VER_MINOR_G(i8 signext) #3

declare dso_local i32 @FW_HDR_FW_VER_MICRO_G(i8 signext) #3

declare dso_local i32 @FW_HDR_FW_VER_BUILD_G(i8 signext) #3

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
