; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Performing reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gve_reset(%struct.gve_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %8 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netif_carrier_ok(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %12 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @dev_info(i32* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %17 = call i32 @gve_clear_do_reset(%struct.gve_priv* %16)
  %18 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %19 = call i32 @gve_set_reset_in_progress(%struct.gve_priv* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %24 = call i32 @gve_turndown(%struct.gve_priv* %23)
  %25 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @gve_reset_and_teardown(%struct.gve_priv* %25, i32 %26)
  br label %46

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %33 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @gve_close(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @gve_reset_and_teardown(%struct.gve_priv* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %45 = call i32 @gve_teardown_priv_resources(%struct.gve_priv* %44)
  br label %46

46:                                               ; preds = %43, %22
  %47 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @gve_reset_recovery(%struct.gve_priv* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %51 = call i32 @gve_clear_reset_in_progress(%struct.gve_priv* %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @gve_clear_do_reset(%struct.gve_priv*) #1

declare dso_local i32 @gve_set_reset_in_progress(%struct.gve_priv*) #1

declare dso_local i32 @gve_turndown(%struct.gve_priv*) #1

declare dso_local i32 @gve_reset_and_teardown(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_close(i32) #1

declare dso_local i32 @gve_teardown_priv_resources(%struct.gve_priv*) #1

declare dso_local i32 @gve_reset_recovery(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_clear_reset_in_progress(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
