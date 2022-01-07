; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_abm*, i32*, i32, %struct.nfp_pf* }
%struct.nfp_abm = type { i32, i8*, i8*, i32, i32, %struct.nfp_app* }
%struct.nfp_pf = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.nfp_reprs = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ABM NIC requires ETH table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ETH entries don't match vNICs (%d vs %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"ABM NIC requires mac_stats symbol\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFP_NET_MAX_RX_RINGS = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_PHYS_PORT = common dso_local global i64 0, align 8
@NFP_REPR_TYPE_PF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*)* @nfp_abm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_init(%struct.nfp_app* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.nfp_pf*, align 8
  %5 = alloca %struct.nfp_reprs*, align 8
  %6 = alloca %struct.nfp_abm*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 3
  %10 = load %struct.nfp_pf*, %struct.nfp_pf** %9, align 8
  store %struct.nfp_pf* %10, %struct.nfp_pf** %4, align 8
  %11 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %12 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %17 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @nfp_err(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %193

22:                                               ; preds = %1
  %23 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %24 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %25, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %22
  %33 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %34 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %37 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %40 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i32, i8*, ...) @nfp_err(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %193

47:                                               ; preds = %22
  %48 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %49 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %54 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @nfp_warn(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %193

59:                                               ; preds = %47
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.nfp_abm* @kzalloc(i32 40, i32 %60)
  store %struct.nfp_abm* %61, %struct.nfp_abm** %6, align 8
  %62 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %63 = icmp ne %struct.nfp_abm* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %193

67:                                               ; preds = %59
  %68 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %69 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %70 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %69, i32 0, i32 0
  store %struct.nfp_abm* %68, %struct.nfp_abm** %70, align 8
  %71 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %72 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %73 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %72, i32 0, i32 5
  store %struct.nfp_app* %71, %struct.nfp_app** %73, align 8
  %74 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %75 = call i32 @nfp_abm_ctrl_find_addrs(%struct.nfp_abm* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %187

79:                                               ; preds = %67
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %83 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @NFP_NET_MAX_RX_RINGS, align 4
  %86 = call i32 @array_size(i32 %84, i32 %85)
  %87 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %88 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %90 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i32 @bitmap_zalloc(i32 %91, i32 %92)
  %94 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %95 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %97 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %79
  br label %187

101:                                              ; preds = %79
  %102 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %103 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @kvcalloc(i32 %104, i32 1, i32 %105)
  %107 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %108 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %110 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %101
  br label %182

114:                                              ; preds = %101
  %115 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %116 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i8* @kvcalloc(i32 %117, i32 1, i32 %118)
  %120 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %121 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %123 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %114
  br label %177

127:                                              ; preds = %114
  %128 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %129 = call i32 @nfp_abm_fw_init_reset(%struct.nfp_abm* %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %172

133:                                              ; preds = %127
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  %136 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %137 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call %struct.nfp_reprs* @nfp_reprs_alloc(i64 %138)
  store %struct.nfp_reprs* %139, %struct.nfp_reprs** %5, align 8
  %140 = load %struct.nfp_reprs*, %struct.nfp_reprs** %5, align 8
  %141 = icmp ne %struct.nfp_reprs* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %133
  br label %172

143:                                              ; preds = %133
  %144 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %145 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* @NFP_REPR_TYPE_PHYS_PORT, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.nfp_reprs*, %struct.nfp_reprs** %5, align 8
  %151 = call i32 @RCU_INIT_POINTER(i32 %149, %struct.nfp_reprs* %150)
  %152 = load %struct.nfp_pf*, %struct.nfp_pf** %4, align 8
  %153 = getelementptr inbounds %struct.nfp_pf, %struct.nfp_pf* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call %struct.nfp_reprs* @nfp_reprs_alloc(i64 %154)
  store %struct.nfp_reprs* %155, %struct.nfp_reprs** %5, align 8
  %156 = load %struct.nfp_reprs*, %struct.nfp_reprs** %5, align 8
  %157 = icmp ne %struct.nfp_reprs* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %143
  br label %168

159:                                              ; preds = %143
  %160 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %161 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @NFP_REPR_TYPE_PF, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.nfp_reprs*, %struct.nfp_reprs** %5, align 8
  %167 = call i32 @RCU_INIT_POINTER(i32 %165, %struct.nfp_reprs* %166)
  store i32 0, i32* %2, align 4
  br label %193

168:                                              ; preds = %158
  %169 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %170 = load i64, i64* @NFP_REPR_TYPE_PHYS_PORT, align 8
  %171 = call i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %169, i64 %170)
  br label %172

172:                                              ; preds = %168, %142, %132
  %173 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %174 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @kvfree(i8* %175)
  br label %177

177:                                              ; preds = %172, %126
  %178 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %179 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @kvfree(i8* %180)
  br label %182

182:                                              ; preds = %177, %113
  %183 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %184 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @bitmap_free(i32 %185)
  br label %187

187:                                              ; preds = %182, %100, %78
  %188 = load %struct.nfp_abm*, %struct.nfp_abm** %6, align 8
  %189 = call i32 @kfree(%struct.nfp_abm* %188)
  %190 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %191 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %190, i32 0, i32 0
  store %struct.nfp_abm* null, %struct.nfp_abm** %191, align 8
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %187, %159, %64, %52, %32, %15
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @nfp_err(i32, i8*, ...) #1

declare dso_local i32 @nfp_warn(i32, i8*) #1

declare dso_local %struct.nfp_abm* @kzalloc(i32, i32) #1

declare dso_local i32 @nfp_abm_ctrl_find_addrs(%struct.nfp_abm*) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @bitmap_zalloc(i32, i32) #1

declare dso_local i8* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @nfp_abm_fw_init_reset(%struct.nfp_abm*) #1

declare dso_local %struct.nfp_reprs* @nfp_reprs_alloc(i64) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.nfp_reprs*) #1

declare dso_local i32 @nfp_reprs_clean_and_free_by_type(%struct.nfp_app*, i64) #1

declare dso_local i32 @kvfree(i8*) #1

declare dso_local i32 @bitmap_free(i32) #1

declare dso_local i32 @kfree(%struct.nfp_abm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
