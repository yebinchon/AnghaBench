; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_pupd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps80031.c_tps80031_pupd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps80031_pupd_data = type { i32, i32, i32 }
%struct.tps80031 = type { i32 }
%struct.tps80031_platform_data = type { i32, %struct.tps80031_pupd_init_data* }
%struct.tps80031_pupd_init_data = type { i64, i64 }

@tps80031_pupds = common dso_local global %struct.tps80031_pupd_data* null, align 8
@TPS80031_PUPD_PULLDOWN = common dso_local global i64 0, align 8
@TPS80031_PUPD_PULLUP = common dso_local global i64 0, align 8
@TPS80031_SLAVE_ID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tps80031*, %struct.tps80031_platform_data*)* @tps80031_pupd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps80031_pupd_init(%struct.tps80031* %0, %struct.tps80031_platform_data* %1) #0 {
  %3 = alloca %struct.tps80031*, align 8
  %4 = alloca %struct.tps80031_platform_data*, align 8
  %5 = alloca %struct.tps80031_pupd_init_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps80031_pupd_init_data*, align 8
  %9 = alloca %struct.tps80031_pupd_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tps80031* %0, %struct.tps80031** %3, align 8
  store %struct.tps80031_platform_data* %1, %struct.tps80031_platform_data** %4, align 8
  %12 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %4, align 8
  %13 = getelementptr inbounds %struct.tps80031_platform_data, %struct.tps80031_platform_data* %12, i32 0, i32 1
  %14 = load %struct.tps80031_pupd_init_data*, %struct.tps80031_pupd_init_data** %13, align 8
  store %struct.tps80031_pupd_init_data* %14, %struct.tps80031_pupd_init_data** %5, align 8
  %15 = load %struct.tps80031_platform_data*, %struct.tps80031_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.tps80031_platform_data, %struct.tps80031_platform_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %70, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = load %struct.tps80031_pupd_init_data*, %struct.tps80031_pupd_init_data** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.tps80031_pupd_init_data, %struct.tps80031_pupd_init_data* %23, i64 %25
  store %struct.tps80031_pupd_init_data* %26, %struct.tps80031_pupd_init_data** %8, align 8
  %27 = load %struct.tps80031_pupd_data*, %struct.tps80031_pupd_data** @tps80031_pupds, align 8
  %28 = load %struct.tps80031_pupd_init_data*, %struct.tps80031_pupd_init_data** %8, align 8
  %29 = getelementptr inbounds %struct.tps80031_pupd_init_data, %struct.tps80031_pupd_init_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.tps80031_pupd_data, %struct.tps80031_pupd_data* %27, i64 %30
  store %struct.tps80031_pupd_data* %31, %struct.tps80031_pupd_data** %9, align 8
  store i32 0, i32* %10, align 4
  %32 = load %struct.tps80031_pupd_data*, %struct.tps80031_pupd_data** %9, align 8
  %33 = getelementptr inbounds %struct.tps80031_pupd_data, %struct.tps80031_pupd_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tps80031_pupd_data*, %struct.tps80031_pupd_data** %9, align 8
  %36 = getelementptr inbounds %struct.tps80031_pupd_data, %struct.tps80031_pupd_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  store i32 %38, i32* %11, align 4
  %39 = load %struct.tps80031_pupd_init_data*, %struct.tps80031_pupd_init_data** %8, align 8
  %40 = getelementptr inbounds %struct.tps80031_pupd_init_data, %struct.tps80031_pupd_init_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TPS80031_PUPD_PULLDOWN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %22
  %45 = load %struct.tps80031_pupd_data*, %struct.tps80031_pupd_data** %9, align 8
  %46 = getelementptr inbounds %struct.tps80031_pupd_data, %struct.tps80031_pupd_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  br label %59

48:                                               ; preds = %22
  %49 = load %struct.tps80031_pupd_init_data*, %struct.tps80031_pupd_init_data** %8, align 8
  %50 = getelementptr inbounds %struct.tps80031_pupd_init_data, %struct.tps80031_pupd_init_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TPS80031_PUPD_PULLUP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.tps80031_pupd_data*, %struct.tps80031_pupd_data** %9, align 8
  %56 = getelementptr inbounds %struct.tps80031_pupd_data, %struct.tps80031_pupd_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %54, %48
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.tps80031*, %struct.tps80031** %3, align 8
  %61 = getelementptr inbounds %struct.tps80031, %struct.tps80031* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TPS80031_SLAVE_ID1, align 4
  %64 = load %struct.tps80031_pupd_data*, %struct.tps80031_pupd_data** %9, align 8
  %65 = getelementptr inbounds %struct.tps80031_pupd_data, %struct.tps80031_pupd_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @tps80031_update(i32 %62, i32 %63, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %18

73:                                               ; preds = %18
  ret void
}

declare dso_local i32 @tps80031_update(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
