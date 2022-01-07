; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_ast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_ast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de4x5_private = type { i64, i32, i64, i64, i32 }
%struct.timer_list = type { i32 }
%struct.net_device = type { i32 }

@timer = common dso_local global i32 0, align 4
@DE4X5_AUTOSENSE_MS = common dso_local global i32 0, align 4
@DC21140 = common dso_local global i64 0, align 8
@DC21041 = common dso_local global i64 0, align 8
@DC21040 = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@lp = common dso_local global %struct.de4x5_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @de4x5_ast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_ast(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %8 = ptrtoint %struct.de4x5_private* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.de4x5_private* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.de4x5_private* %11, %struct.de4x5_private** %3, align 8
  %12 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %13 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.net_device* @dev_get_drvdata(i32 %14)
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load i32, i32* @DE4X5_AUTOSENSE_MS, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @srom_autoconf(%struct.net_device* %22)
  store i32 %23, i32* %5, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %26 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DC21140, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @dc21140m_autoconf(%struct.net_device* %31)
  store i32 %32, i32* %5, align 4
  br label %53

33:                                               ; preds = %24
  %34 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %35 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DC21041, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call i32 @dc21041_autoconf(%struct.net_device* %40)
  store i32 %41, i32* %5, align 4
  br label %52

42:                                               ; preds = %33
  %43 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %44 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DC21040, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i32 @dc21040_autoconf(%struct.net_device* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %42
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %30
  br label %54

54:                                               ; preds = %53, %21
  %55 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %56 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @HZ, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %59, 1000
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %66 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %65, i32 0, i32 1
  %67 = load i64, i64* @jiffies, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = call i32 @mod_timer(i32* %66, i64 %70)
  ret void
}

declare dso_local %struct.de4x5_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.net_device* @dev_get_drvdata(i32) #1

declare dso_local i32 @srom_autoconf(%struct.net_device*) #1

declare dso_local i32 @dc21140m_autoconf(%struct.net_device*) #1

declare dso_local i32 @dc21041_autoconf(%struct.net_device*) #1

declare dso_local i32 @dc21040_autoconf(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
