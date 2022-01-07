; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_add_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_add_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_dev = type { i64, i64, %struct.sram_partition* }
%struct.sram_partition = type { i64, i32 }
%struct.sram_reserve = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sram_dev*, %struct.sram_reserve*, i32)* @sram_add_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sram_add_partition(%struct.sram_dev* %0, %struct.sram_reserve* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sram_dev*, align 8
  %6 = alloca %struct.sram_reserve*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sram_partition*, align 8
  store %struct.sram_dev* %0, %struct.sram_dev** %5, align 8
  store %struct.sram_reserve* %1, %struct.sram_reserve** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %11 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %10, i32 0, i32 2
  %12 = load %struct.sram_partition*, %struct.sram_partition** %11, align 8
  %13 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %14 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %12, i64 %15
  store %struct.sram_partition* %16, %struct.sram_partition** %9, align 8
  %17 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %18 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %17, i32 0, i32 1
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %21 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %24 = getelementptr inbounds %struct.sram_reserve, %struct.sram_reserve* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %28 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %30 = getelementptr inbounds %struct.sram_reserve, %struct.sram_reserve* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %35 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %38 = call i32 @sram_add_pool(%struct.sram_dev* %34, %struct.sram_reserve* %35, i32 %36, %struct.sram_partition* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %92

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %46 = getelementptr inbounds %struct.sram_reserve, %struct.sram_reserve* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %51 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %54 = call i32 @sram_add_export(%struct.sram_dev* %50, %struct.sram_reserve* %51, i32 %52, %struct.sram_partition* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %92

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %62 = getelementptr inbounds %struct.sram_reserve, %struct.sram_reserve* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %67 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %68 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %69 = call i32 @sram_check_protect_exec(%struct.sram_dev* %66, %struct.sram_reserve* %67, %struct.sram_partition* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %92

74:                                               ; preds = %65
  %75 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %76 = load %struct.sram_reserve*, %struct.sram_reserve** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %79 = call i32 @sram_add_pool(%struct.sram_dev* %75, %struct.sram_reserve* %76, i32 %77, %struct.sram_partition* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %92

84:                                               ; preds = %74
  %85 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %86 = call i32 @sram_add_protect_exec(%struct.sram_partition* %85)
  br label %87

87:                                               ; preds = %84, %60
  %88 = load %struct.sram_dev*, %struct.sram_dev** %5, align 8
  %89 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %82, %72, %57, %41
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sram_add_pool(%struct.sram_dev*, %struct.sram_reserve*, i32, %struct.sram_partition*) #1

declare dso_local i32 @sram_add_export(%struct.sram_dev*, %struct.sram_reserve*, i32, %struct.sram_partition*) #1

declare dso_local i32 @sram_check_protect_exec(%struct.sram_dev*, %struct.sram_reserve*, %struct.sram_partition*) #1

declare dso_local i32 @sram_add_protect_exec(%struct.sram_partition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
