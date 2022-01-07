; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_pci_vpd_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, i32, %struct.niu_vpd, i32, %struct.net_device* }
%struct.niu_vpd = type { i32*, i32, i32 }
%struct.net_device = type { i64* }

@.str = private unnamed_addr constant [40 x i8] c"VPD MAC invalid, falling back to SPROM\0A\00", align 1
@NIU_FLAGS_VPD_VALID = common dso_local global i32 0, align 4
@NIU_ALONSO_MDL_STR = common dso_local global i32 0, align 4
@NIU_KIMI_MDL_STR = common dso_local global i32 0, align 4
@NIU_FLAGS_10G = common dso_local global i32 0, align 4
@NIU_FLAGS_FIBER = common dso_local global i32 0, align 4
@NIU_FLAGS_XCVR_SERDES = common dso_local global i32 0, align 4
@MAC_XCVR_PCS = common dso_local global i32 0, align 4
@MAC_XCVR_XPCS = common dso_local global i32 0, align 4
@NIU_FOXXY_MDL_STR = common dso_local global i32 0, align 4
@NIU_FLAGS_HOTPLUG_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Illegal phy string [%s]\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Falling back to SPROM\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_pci_vpd_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_pci_vpd_validate(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.niu_vpd*, align 8
  %5 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %6 = load %struct.niu*, %struct.niu** %2, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 5
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.niu*, %struct.niu** %2, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 3
  store %struct.niu_vpd* %10, %struct.niu_vpd** %4, align 8
  %11 = load %struct.niu_vpd*, %struct.niu_vpd** %4, align 8
  %12 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = call i32 @is_valid_ether_addr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.niu*, %struct.niu** %2, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @NIU_FLAGS_VPD_VALID, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.niu*, %struct.niu** %2, align 8
  %25 = getelementptr inbounds %struct.niu, %struct.niu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %177

28:                                               ; preds = %1
  %29 = load %struct.niu*, %struct.niu** %2, align 8
  %30 = getelementptr inbounds %struct.niu, %struct.niu* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NIU_ALONSO_MDL_STR, align 4
  %34 = call i32 @strcmp(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.niu*, %struct.niu** %2, align 8
  %38 = getelementptr inbounds %struct.niu, %struct.niu* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NIU_KIMI_MDL_STR, align 4
  %42 = call i32 @strcmp(i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %92, label %44

44:                                               ; preds = %36, %28
  %45 = load i32, i32* @NIU_FLAGS_10G, align 4
  %46 = load %struct.niu*, %struct.niu** %2, align 8
  %47 = getelementptr inbounds %struct.niu, %struct.niu* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.niu*, %struct.niu** %2, align 8
  %53 = getelementptr inbounds %struct.niu, %struct.niu* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @NIU_FLAGS_XCVR_SERDES, align 4
  %57 = load %struct.niu*, %struct.niu** %2, align 8
  %58 = getelementptr inbounds %struct.niu, %struct.niu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* @MAC_XCVR_PCS, align 4
  %62 = load %struct.niu*, %struct.niu** %2, align 8
  %63 = getelementptr inbounds %struct.niu, %struct.niu* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.niu*, %struct.niu** %2, align 8
  %65 = getelementptr inbounds %struct.niu, %struct.niu* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %80

68:                                               ; preds = %44
  %69 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %70 = load %struct.niu*, %struct.niu** %2, align 8
  %71 = getelementptr inbounds %struct.niu, %struct.niu* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @NIU_FLAGS_10G, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.niu*, %struct.niu** %2, align 8
  %77 = getelementptr inbounds %struct.niu, %struct.niu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %68, %44
  %81 = load %struct.niu*, %struct.niu** %2, align 8
  %82 = getelementptr inbounds %struct.niu, %struct.niu* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NIU_FLAGS_10G, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @MAC_XCVR_XPCS, align 4
  %89 = load %struct.niu*, %struct.niu** %2, align 8
  %90 = getelementptr inbounds %struct.niu, %struct.niu* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %87, %80
  br label %139

92:                                               ; preds = %36
  %93 = load %struct.niu*, %struct.niu** %2, align 8
  %94 = getelementptr inbounds %struct.niu, %struct.niu* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @NIU_FOXXY_MDL_STR, align 4
  %98 = call i32 @strcmp(i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @NIU_FLAGS_10G, align 4
  %102 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.niu*, %struct.niu** %2, align 8
  %107 = getelementptr inbounds %struct.niu, %struct.niu* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %138

110:                                              ; preds = %92
  %111 = load %struct.niu*, %struct.niu** %2, align 8
  %112 = load %struct.niu*, %struct.niu** %2, align 8
  %113 = getelementptr inbounds %struct.niu, %struct.niu* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @niu_phy_type_prop_decode(%struct.niu* %111, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %110
  %119 = load %struct.niu*, %struct.niu** %2, align 8
  %120 = getelementptr inbounds %struct.niu, %struct.niu* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.niu*, %struct.niu** %2, align 8
  %123 = getelementptr inbounds %struct.niu, %struct.niu* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load %struct.niu*, %struct.niu** %2, align 8
  %128 = getelementptr inbounds %struct.niu, %struct.niu* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @NIU_FLAGS_VPD_VALID, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.niu*, %struct.niu** %2, align 8
  %134 = getelementptr inbounds %struct.niu, %struct.niu* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %177

137:                                              ; preds = %110
  br label %138

138:                                              ; preds = %137, %100
  br label %139

139:                                              ; preds = %138, %91
  %140 = load %struct.net_device*, %struct.net_device** %3, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.niu_vpd*, %struct.niu_vpd** %4, align 8
  %144 = getelementptr inbounds %struct.niu_vpd, %struct.niu_vpd* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* @ETH_ALEN, align 4
  %147 = call i32 @memcpy(i64* %142, i32* %145, i32 %146)
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 5
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %5, align 8
  %153 = load %struct.niu*, %struct.niu** %2, align 8
  %154 = getelementptr inbounds %struct.niu, %struct.niu* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = load %struct.net_device*, %struct.net_device** %3, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 5
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, %156
  store i64 %162, i64* %160, align 8
  %163 = load %struct.net_device*, %struct.net_device** %3, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 5
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %5, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %139
  %171 = load %struct.net_device*, %struct.net_device** %3, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 4
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, i64* %174, align 8
  br label %177

177:                                              ; preds = %17, %118, %170, %139
  ret void
}

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @niu_phy_type_prop_decode(%struct.niu*, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
