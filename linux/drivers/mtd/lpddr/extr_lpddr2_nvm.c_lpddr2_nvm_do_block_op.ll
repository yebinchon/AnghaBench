; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_lpddr2_nvm_do_block_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/lpddr/extr_lpddr2_nvm.c_lpddr2_nvm_do_block_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.map_info* }
%struct.map_info = type { i32 }

@lpdd2_nvm_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i32)* @lpddr2_nvm_do_block_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpddr2_nvm_do_block_op(%struct.mtd_info* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.map_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 1
  %15 = load %struct.map_info*, %struct.map_info** %14, align 8
  store %struct.map_info* %15, %struct.map_info** %9, align 8
  store i32 0, i32* %12, align 4
  %16 = call i32 @mutex_lock(i32* @lpdd2_nvm_mutex)
  %17 = load %struct.map_info*, %struct.map_info** %9, align 8
  %18 = call i32 @ow_enable(%struct.map_info* %17)
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %11, align 8
  br label %23

23:                                               ; preds = %38, %4
  %24 = load %struct.map_info*, %struct.map_info** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @lpddr2_nvm_do_op(%struct.map_info* %24, i32 %25, i32 0, i64 %26, i64 %27, i32* null)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %43

32:                                               ; preds = %23
  %33 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %23, label %42

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.map_info*, %struct.map_info** %9, align 8
  %45 = call i32 @ow_disable(%struct.map_info* %44)
  %46 = call i32 @mutex_unlock(i32* @lpdd2_nvm_mutex)
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ow_enable(%struct.map_info*) #1

declare dso_local i32 @lpddr2_nvm_do_op(%struct.map_info*, i32, i32, i64, i64, i32*) #1

declare dso_local i32 @ow_disable(%struct.map_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
