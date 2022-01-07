; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.qede_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@ETHTOOL_FWVERS_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"qede\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@DRV_MODULE_VERSION = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"[storm]  \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s [storm %s]\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@QED_MBI_VERSION_2_MASK = common dso_local global i32 0, align 4
@QED_MBI_VERSION_2_OFFSET = common dso_local global i32 0, align 4
@QED_MBI_VERSION_1_MASK = common dso_local global i32 0, align 4
@QED_MBI_VERSION_1_OFFSET = common dso_local global i32 0, align 4
@QED_MBI_VERSION_0_MASK = common dso_local global i32 0, align 4
@QED_MBI_VERSION_0_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"mbi %s [mfw %s]\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mfw %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @qede_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qede_dev*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %10 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %17)
  store %struct.qede_dev* %18, %struct.qede_dev** %8, align 8
  %19 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strlcpy(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %27 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %28 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %33 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %38 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %43 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %16, i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %36, i32 %41, i32 %46)
  %48 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %49 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %50 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 24
  %55 = and i32 %54, 255
  %56 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %57 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 16
  %62 = and i32 %61, 255
  %63 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %64 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 8
  %69 = and i32 %68, 255
  %70 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %71 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 255
  %76 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %62, i32 %69, i32 %75)
  %77 = call i32 @strlen(i8* %16)
  %78 = load i8*, i8** @DRV_MODULE_VERSION, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = add nsw i32 %77, %79
  %81 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %83, 4
  br i1 %84, label %85, label %93

85:                                               ; preds = %2
  %86 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load i8*, i8** @DRV_MODULE_VERSION, align 8
  %92 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %91, i8* %16)
  br label %101

93:                                               ; preds = %2
  %94 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %95 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = load i8*, i8** @DRV_MODULE_VERSION, align 8
  %100 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %98, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %99, i8* %16)
  br label %101

101:                                              ; preds = %93, %85
  %102 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %103 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %101
  %109 = load i32, i32* @ETHTOOL_FWVERS_LEN, align 4
  %110 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %111 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @QED_MBI_VERSION_2_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @QED_MBI_VERSION_2_OFFSET, align 4
  %118 = ashr i32 %116, %117
  %119 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %120 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @QED_MBI_VERSION_1_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @QED_MBI_VERSION_1_OFFSET, align 4
  %127 = ashr i32 %125, %126
  %128 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %129 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @QED_MBI_VERSION_0_MASK, align 4
  %134 = and i32 %132, %133
  %135 = load i32, i32* @QED_MBI_VERSION_0_OFFSET, align 4
  %136 = ashr i32 %134, %135
  %137 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %21, i32 %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %127, i32 %136)
  %138 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %139 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %142, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %21, i8* %13)
  br label %151

144:                                              ; preds = %101
  %145 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %146 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %149, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %13)
  br label %151

151:                                              ; preds = %144, %108
  %152 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %153 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.qede_dev*, %struct.qede_dev** %8, align 8
  %156 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @pci_name(i32 %157)
  %159 = call i32 @strlcpy(i32 %154, i8* %158, i32 4)
  %160 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %160)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @pci_name(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
