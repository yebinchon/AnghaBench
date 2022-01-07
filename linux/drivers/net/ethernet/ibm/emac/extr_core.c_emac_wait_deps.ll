; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_wait_deps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_wait_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.emac_depentry = type { i32, i32, i32 }

@EMAC_DEP_COUNT = common dso_local global i32 0, align 4
@EMAC_DEP_MAL_IDX = common dso_local global i64 0, align 8
@EMAC_DEP_ZMII_IDX = common dso_local global i64 0, align 8
@EMAC_DEP_RGMII_IDX = common dso_local global i64 0, align 8
@EMAC_DEP_TAH_IDX = common dso_local global i64 0, align 8
@EMAC_DEP_MDIO_IDX = common dso_local global i64 0, align 8
@emac_boot_list = common dso_local global i64 0, align 8
@EMAC_DEP_PREV_IDX = common dso_local global i64 0, align 8
@platform_bus_type = common dso_local global i32 0, align 4
@emac_of_bus_notifier = common dso_local global i32 0, align 4
@emac_probe_wait = common dso_local global i32 0, align 4
@EMAC_PROBE_DEP_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emac_instance*)* @emac_wait_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_wait_deps(%struct.emac_instance* %0) #0 {
  %2 = alloca %struct.emac_instance*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.emac_instance* %0, %struct.emac_instance** %2, align 8
  %7 = load i32, i32* @EMAC_DEP_COUNT, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca %struct.emac_depentry, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = bitcast %struct.emac_depentry* %10 to %struct.emac_depentry**
  %12 = mul nuw i64 12, %8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(%struct.emac_depentry** %11, i32 0, i32 %13)
  %15 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %16 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* @EMAC_DEP_MAL_IDX, align 8
  %19 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %18
  %20 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %22 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @EMAC_DEP_ZMII_IDX, align 8
  %25 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %24
  %26 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %28 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @EMAC_DEP_RGMII_IDX, align 8
  %31 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %30
  %32 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %34 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %39 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @EMAC_DEP_TAH_IDX, align 8
  %42 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %41
  %43 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %1
  %45 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %46 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %51 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* @EMAC_DEP_MDIO_IDX, align 8
  %54 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %53
  %55 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %44
  %57 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %58 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %63 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @emac_boot_list, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* @EMAC_DEP_PREV_IDX, align 8
  %69 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %68
  %70 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %61, %56
  %72 = call i32 @bus_register_notifier(i32* @platform_bus_type, i32* @emac_of_bus_notifier)
  %73 = load i32, i32* @emac_probe_wait, align 4
  %74 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %75 = call i64 @emac_check_deps(%struct.emac_instance* %74, %struct.emac_depentry* %10)
  %76 = load i32, i32* @EMAC_PROBE_DEP_TIMEOUT, align 4
  %77 = call i32 @wait_event_timeout(i32 %73, i64 %75, i32 %76)
  %78 = call i32 @bus_unregister_notifier(i32* @platform_bus_type, i32* @emac_of_bus_notifier)
  %79 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %80 = call i64 @emac_check_deps(%struct.emac_instance* %79, %struct.emac_depentry* %10)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %83, %82
  %87 = phi i32 [ 0, %82 ], [ %85, %83 ]
  store i32 %87, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %109, %86
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @EMAC_DEP_COUNT, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %112

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %94
  %96 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @of_node_put(i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %92
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %103
  %105 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @of_dev_put(i32 %106)
  br label %108

108:                                              ; preds = %101, %92
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %88

112:                                              ; preds = %88
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %112
  %116 = load i64, i64* @EMAC_DEP_MAL_IDX, align 8
  %117 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %116
  %118 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %121 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 8
  %122 = load i64, i64* @EMAC_DEP_ZMII_IDX, align 8
  %123 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %122
  %124 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %127 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %126, i32 0, i32 9
  store i32 %125, i32* %127, align 4
  %128 = load i64, i64* @EMAC_DEP_RGMII_IDX, align 8
  %129 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %128
  %130 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %133 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %132, i32 0, i32 8
  store i32 %131, i32* %133, align 8
  %134 = load i64, i64* @EMAC_DEP_TAH_IDX, align 8
  %135 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %134
  %136 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %139 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 4
  %140 = load i64, i64* @EMAC_DEP_MDIO_IDX, align 8
  %141 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %140
  %142 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %145 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %115, %112
  %147 = load i64, i64* @EMAC_DEP_PREV_IDX, align 8
  %148 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %10, i64 %147
  %149 = getelementptr inbounds %struct.emac_depentry, %struct.emac_depentry* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @of_dev_put(i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %153)
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.emac_depentry**, i32, i32) #2

declare dso_local i32 @bus_register_notifier(i32*, i32*) #2

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #2

declare dso_local i64 @emac_check_deps(%struct.emac_instance*, %struct.emac_depentry*) #2

declare dso_local i32 @bus_unregister_notifier(i32*, i32*) #2

declare dso_local i32 @of_node_put(i32) #2

declare dso_local i32 @of_dev_put(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
