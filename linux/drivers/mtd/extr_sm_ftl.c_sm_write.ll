; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_sm_ftl.c_sm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { %struct.sm_ftl* }
%struct.sm_ftl = type { i32, i32, i32, i32, i32 }
%struct.ftl_zone = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@cache_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, i64, i8*)* @sm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm_write(%struct.mtd_blktrans_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.mtd_blktrans_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sm_ftl*, align 8
  %8 = alloca %struct.ftl_zone*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mtd_blktrans_dev, %struct.mtd_blktrans_dev* %13, i32 0, i32 0
  %15 = load %struct.sm_ftl*, %struct.sm_ftl** %14, align 8
  store %struct.sm_ftl* %15, %struct.sm_ftl** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %17 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = shl i64 %21, 9
  %23 = call i32 @sm_break_offset(%struct.sm_ftl* %20, i64 %22, i32* %10, i32* %11, i32* %12)
  %24 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %25 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %24, i32 0, i32 3
  %26 = call i32 @del_timer(i32* %25)
  %27 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %28 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.ftl_zone* @sm_get_zone(%struct.sm_ftl* %30, i32 %31)
  store %struct.ftl_zone* %32, %struct.ftl_zone** %8, align 8
  %33 = load %struct.ftl_zone*, %struct.ftl_zone** %8, align 8
  %34 = call i64 @IS_ERR(%struct.ftl_zone* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load %struct.ftl_zone*, %struct.ftl_zone** %8, align 8
  %38 = call i32 @PTR_ERR(%struct.ftl_zone* %37)
  store i32 %38, i32* %9, align 4
  br label %69

39:                                               ; preds = %3
  %40 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %41 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %47 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45, %39
  %52 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %53 = call i32 @sm_cache_flush(%struct.sm_ftl* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %69

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %60 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %63 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %45
  %65 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @sm_cache_put(%struct.sm_ftl* %65, i8* %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %56, %36
  %70 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %71 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %70, i32 0, i32 3
  %72 = load i64, i64* @jiffies, align 8
  %73 = load i32, i32* @cache_timeout, align 4
  %74 = call i64 @msecs_to_jiffies(i32 %73)
  %75 = add nsw i64 %72, %74
  %76 = call i32 @mod_timer(i32* %71, i64 %75)
  %77 = load %struct.sm_ftl*, %struct.sm_ftl** %7, align 8
  %78 = getelementptr inbounds %struct.sm_ftl, %struct.sm_ftl* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sm_break_offset(%struct.sm_ftl*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ftl_zone* @sm_get_zone(%struct.sm_ftl*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ftl_zone*) #1

declare dso_local i32 @PTR_ERR(%struct.ftl_zone*) #1

declare dso_local i32 @sm_cache_flush(%struct.sm_ftl*) #1

declare dso_local i32 @sm_cache_put(%struct.sm_ftl*, i8*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
