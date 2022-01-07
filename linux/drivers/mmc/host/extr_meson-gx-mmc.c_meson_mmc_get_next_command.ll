; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_get_next_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_get_next_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_command = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { %struct.mmc_command*, i32, %struct.mmc_command* }
%struct.TYPE_4__ = type { i64 }

@MMC_SET_BLOCK_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mmc_command* (%struct.mmc_command*)* @meson_mmc_get_next_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mmc_command* @meson_mmc_get_next_command(%struct.mmc_command* %0) #0 {
  %2 = alloca %struct.mmc_command*, align 8
  %3 = alloca %struct.mmc_command*, align 8
  store %struct.mmc_command* %0, %struct.mmc_command** %3, align 8
  %4 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %5 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MMC_SET_BLOCK_COUNT, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load %struct.mmc_command*, %struct.mmc_command** %18, align 8
  store %struct.mmc_command* %19, %struct.mmc_command** %2, align 8
  br label %52

20:                                               ; preds = %9, %1
  %21 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @mmc_op_multi(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %40 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38, %33, %26
  %46 = load %struct.mmc_command*, %struct.mmc_command** %3, align 8
  %47 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.mmc_command*, %struct.mmc_command** %49, align 8
  store %struct.mmc_command* %50, %struct.mmc_command** %2, align 8
  br label %52

51:                                               ; preds = %38, %20
  store %struct.mmc_command* null, %struct.mmc_command** %2, align 8
  br label %52

52:                                               ; preds = %51, %45, %14
  %53 = load %struct.mmc_command*, %struct.mmc_command** %2, align 8
  ret %struct.mmc_command* %53
}

declare dso_local i64 @mmc_op_multi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
