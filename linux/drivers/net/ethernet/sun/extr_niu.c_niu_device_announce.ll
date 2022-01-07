; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_device_announce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_device_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.net_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: NIU Ethernet %pM\0A\00", align 1
@PLAT_TYPE_ATCA_CP3220 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: Port type[%s] mode[%s:%s] XCVR[%s] phy[%s]\0A\00", align 1
@NIU_FLAGS_XMAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"XMAC\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"BMAC\00", align 1
@NIU_FLAGS_10G = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"10G\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"1G\00", align 1
@NIU_FLAGS_FIBER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"RGMII FIBER\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SERDES\00", align 1
@MAC_XCVR_MII = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"MII\00", align 1
@MAC_XCVR_PCS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"PCS\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"XPCS\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"FIBER\00", align 1
@NIU_FLAGS_XCVR_SERDES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"COPPER\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_device_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_device_announce(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %4 = load %struct.niu*, %struct.niu** %2, align 8
  %5 = getelementptr inbounds %struct.niu, %struct.niu* %4, i32 0, i32 4
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9, i8* %14)
  %16 = load %struct.niu*, %struct.niu** %2, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PLAT_TYPE_ATCA_CP3220, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.niu*, %struct.niu** %2, align 8
  %28 = getelementptr inbounds %struct.niu, %struct.niu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %35 = load %struct.niu*, %struct.niu** %2, align 8
  %36 = getelementptr inbounds %struct.niu, %struct.niu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NIU_FLAGS_10G, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %43 = load %struct.niu*, %struct.niu** %2, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %51 = load %struct.niu*, %struct.niu** %2, align 8
  %52 = getelementptr inbounds %struct.niu, %struct.niu* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MAC_XCVR_MII, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %23
  br label %65

57:                                               ; preds = %23
  %58 = load %struct.niu*, %struct.niu** %2, align 8
  %59 = getelementptr inbounds %struct.niu, %struct.niu* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAC_XCVR_PCS, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  br label %65

65:                                               ; preds = %57, %56
  %66 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %56 ], [ %64, %57 ]
  %67 = load %struct.niu*, %struct.niu** %2, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %34, i8* %42, i8* %50, i8* %66, i32 %70)
  br label %131

72:                                               ; preds = %1
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.niu*, %struct.niu** %2, align 8
  %77 = getelementptr inbounds %struct.niu, %struct.niu* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NIU_FLAGS_XMAC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %84 = load %struct.niu*, %struct.niu** %2, align 8
  %85 = getelementptr inbounds %struct.niu, %struct.niu* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NIU_FLAGS_10G, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %92 = load %struct.niu*, %struct.niu** %2, align 8
  %93 = getelementptr inbounds %struct.niu, %struct.niu* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NIU_FLAGS_FIBER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %72
  br label %108

99:                                               ; preds = %72
  %100 = load %struct.niu*, %struct.niu** %2, align 8
  %101 = getelementptr inbounds %struct.niu, %struct.niu* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NIU_FLAGS_XCVR_SERDES, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)
  br label %108

108:                                              ; preds = %99, %98
  %109 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), %98 ], [ %107, %99 ]
  %110 = load %struct.niu*, %struct.niu** %2, align 8
  %111 = getelementptr inbounds %struct.niu, %struct.niu* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MAC_XCVR_MII, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %108
  br label %124

116:                                              ; preds = %108
  %117 = load %struct.niu*, %struct.niu** %2, align 8
  %118 = getelementptr inbounds %struct.niu, %struct.niu* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MAC_XCVR_PCS, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)
  br label %124

124:                                              ; preds = %116, %115
  %125 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), %115 ], [ %123, %116 ]
  %126 = load %struct.niu*, %struct.niu** %2, align 8
  %127 = getelementptr inbounds %struct.niu, %struct.niu* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i8*, i32, i8*, ...) @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %75, i8* %83, i8* %91, i8* %109, i8* %125, i32 %129)
  br label %131

131:                                              ; preds = %124, %65
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
