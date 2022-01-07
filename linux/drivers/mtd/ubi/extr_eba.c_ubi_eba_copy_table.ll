; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_copy_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_copy_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume = type { %struct.ubi_eba_table* }
%struct.ubi_eba_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_eba_copy_table(%struct.ubi_volume* %0, %struct.ubi_eba_table* %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_volume*, align 8
  %5 = alloca %struct.ubi_eba_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_eba_table*, align 8
  %8 = alloca i32, align 4
  store %struct.ubi_volume* %0, %struct.ubi_volume** %4, align 8
  store %struct.ubi_eba_table* %1, %struct.ubi_eba_table** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %5, align 8
  %10 = icmp ne %struct.ubi_eba_table* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %13 = icmp ne %struct.ubi_volume* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %16 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %15, i32 0, i32 0
  %17 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %16, align 8
  %18 = icmp ne %struct.ubi_eba_table* %17, null
  br label %19

19:                                               ; preds = %14, %11, %3
  %20 = phi i1 [ false, %11 ], [ false, %3 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ubi_assert(i32 %21)
  %23 = load %struct.ubi_volume*, %struct.ubi_volume** %4, align 8
  %24 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %23, i32 0, i32 0
  %25 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %24, align 8
  store %struct.ubi_eba_table* %25, %struct.ubi_eba_table** %7, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %46, %19
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %7, align 8
  %32 = getelementptr inbounds %struct.ubi_eba_table, %struct.ubi_eba_table* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %5, align 8
  %40 = getelementptr inbounds %struct.ubi_eba_table, %struct.ubi_eba_table* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %30
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %26

49:                                               ; preds = %26
  ret void
}

declare dso_local i32 @ubi_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
