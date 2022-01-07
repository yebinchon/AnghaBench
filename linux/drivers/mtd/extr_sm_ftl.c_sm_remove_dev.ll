; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_remove_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_remove_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { %struct.sm_ftl* }
%struct.sm_ftl = type { i32, %struct.sm_ftl*, %struct.sm_ftl*, %struct.sm_ftl*, i32, %struct.sm_ftl*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_blktrans_dev*)* @sm_remove_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_remove_dev(%struct.mtd_blktrans_dev* %0) #0 {
  %2 = alloca %struct.mtd_blktrans_dev*, align 8
  %3 = alloca %struct.sm_ftl*, align 8
  %4 = alloca i32, align 4
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %2, align 8
  %5 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %5, i32 0, i32 0
  %7 = load %struct.sm_ftl*, %struct.sm_ftl** %6, align 8
  store %struct.sm_ftl* %7, %struct.sm_ftl** %3, align 8
  %8 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %2, align 8
  %9 = call i32 @del_mtd_blktrans_dev(%struct.mtd_blktrans_dev* %8)
  %10 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %11 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %10, i32 0, i32 7
  store i32* null, i32** %11, align 8
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %47, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %15 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %12
  %19 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %20 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %19, i32 0, i32 2
  %21 = load %struct.sm_ftl*, %struct.sm_ftl** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %21, i64 %23
  %25 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %47

29:                                               ; preds = %18
  %30 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %31 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %30, i32 0, i32 2
  %32 = load %struct.sm_ftl*, %struct.sm_ftl** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %32, i64 %34
  %36 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %35, i32 0, i32 5
  %37 = load %struct.sm_ftl*, %struct.sm_ftl** %36, align 8
  %38 = call i32 @kfree(%struct.sm_ftl* %37)
  %39 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %40 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %39, i32 0, i32 2
  %41 = load %struct.sm_ftl*, %struct.sm_ftl** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %41, i64 %43
  %45 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %44, i32 0, i32 4
  %46 = call i32 @kfifo_free(i32* %45)
  br label %47

47:                                               ; preds = %29, %28
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %12

50:                                               ; preds = %12
  %51 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %52 = call i32 @sm_delete_sysfs_attributes(%struct.sm_ftl* %51)
  %53 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %54 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %53, i32 0, i32 3
  %55 = load %struct.sm_ftl*, %struct.sm_ftl** %54, align 8
  %56 = call i32 @kfree(%struct.sm_ftl* %55)
  %57 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %58 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %57, i32 0, i32 2
  %59 = load %struct.sm_ftl*, %struct.sm_ftl** %58, align 8
  %60 = call i32 @kfree(%struct.sm_ftl* %59)
  %61 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %62 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %61, i32 0, i32 1
  %63 = load %struct.sm_ftl*, %struct.sm_ftl** %62, align 8
  %64 = call i32 @kfree(%struct.sm_ftl* %63)
  %65 = load %struct.sm_ftl*, %struct.sm_ftl** %3, align 8
  %66 = call i32 @kfree(%struct.sm_ftl* %65)
  ret void
}

declare dso_local i32 @del_mtd_blktrans_dev(%struct.mtd_blktrans_dev*) #1

declare dso_local i32 @kfree(%struct.sm_ftl*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @sm_delete_sysfs_attributes(%struct.sm_ftl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
