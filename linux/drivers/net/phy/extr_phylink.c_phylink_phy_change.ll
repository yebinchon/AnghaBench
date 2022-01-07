; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_phy_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_phy_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i32, i64, i64, %struct.phylink* }
%struct.phylink = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@MLO_PAUSE_NONE = common dso_local global i32 0, align 4
@MLO_PAUSE_SYM = common dso_local global i32 0, align 4
@MLO_PAUSE_ASYM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"phy link %s %s/%s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, i32, i32)* @phylink_phy_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phylink_phy_change(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.phylink*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 5
  %10 = load %struct.phylink*, %struct.phylink** %9, align 8
  store %struct.phylink* %10, %struct.phylink** %7, align 8
  %11 = load %struct.phylink*, %struct.phylink** %7, align 8
  %12 = getelementptr inbounds %struct.phylink, %struct.phylink* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.phylink*, %struct.phylink** %7, align 8
  %18 = getelementptr inbounds %struct.phylink, %struct.phylink* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.phylink*, %struct.phylink** %7, align 8
  %24 = getelementptr inbounds %struct.phylink, %struct.phylink* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @MLO_PAUSE_NONE, align 4
  %27 = load %struct.phylink*, %struct.phylink** %7, align 8
  %28 = getelementptr inbounds %struct.phylink, %struct.phylink* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load i32, i32* @MLO_PAUSE_SYM, align 4
  %36 = load %struct.phylink*, %struct.phylink** %7, align 8
  %37 = getelementptr inbounds %struct.phylink, %struct.phylink* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %3
  %42 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @MLO_PAUSE_ASYM, align 4
  %48 = load %struct.phylink*, %struct.phylink** %7, align 8
  %49 = getelementptr inbounds %struct.phylink, %struct.phylink* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.phylink*, %struct.phylink** %7, align 8
  %58 = getelementptr inbounds %struct.phylink, %struct.phylink* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.phylink*, %struct.phylink** %7, align 8
  %62 = getelementptr inbounds %struct.phylink, %struct.phylink* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.phylink*, %struct.phylink** %7, align 8
  %65 = getelementptr inbounds %struct.phylink, %struct.phylink* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.phylink*, %struct.phylink** %7, align 8
  %68 = call i32 @phylink_run_resolve(%struct.phylink* %67)
  %69 = load %struct.phylink*, %struct.phylink** %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %74 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @phy_modes(i32 %76)
  %78 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %79 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @phy_speed_to_str(i32 %80)
  %82 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %83 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @phy_duplex_to_str(i32 %84)
  %86 = call i32 @phylink_dbg(%struct.phylink* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %73, i32 %77, i32 %81, i32 %85)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @phylink_run_resolve(%struct.phylink*) #1

declare dso_local i32 @phylink_dbg(%struct.phylink*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @phy_speed_to_str(i32) #1

declare dso_local i32 @phy_duplex_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
