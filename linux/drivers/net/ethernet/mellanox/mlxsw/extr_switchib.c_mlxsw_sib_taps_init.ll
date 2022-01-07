; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c_mlxsw_sib_taps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c_mlxsw_sib_taps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sib = type { i32 }

@mlxsw_sib_listener = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sib*)* @mlxsw_sib_taps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sib_taps_init(%struct.mlxsw_sib* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sib*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlxsw_sib* %0, %struct.mlxsw_sib** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @mlxsw_sib_listener, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** @mlxsw_sib_listener, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %20 = call i32 @mlxsw_core_trap_register(i32 %14, i32* %18, %struct.mlxsw_sib* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  br label %29

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %50

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %45, %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @mlxsw_sib_listener, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %3, align 8
  %44 = call i32 @mlxsw_core_trap_unregister(i32 %38, i32* %42, %struct.mlxsw_sib* %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %4, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %28
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mlxsw_core_trap_register(i32, i32*, %struct.mlxsw_sib*) #1

declare dso_local i32 @mlxsw_core_trap_unregister(i32, i32*, %struct.mlxsw_sib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
