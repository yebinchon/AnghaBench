; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_satisfy_request_from_offloaded_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_vub300.c_satisfy_request_from_offloaded_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vub300_mmc_host = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64 }
%struct.mmc_command = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vub300_mmc_host*, %struct.mmc_command*)* @satisfy_request_from_offloaded_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @satisfy_request_from_offloaded_data(%struct.vub300_mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vub300_mmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.vub300_mmc_host* %0, %struct.vub300_mmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  %15 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %16 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %18 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %19 = call i64 @FUN(%struct.mmc_command* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %21 = call i64 @REG(%struct.mmc_command* %20)
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %111, %2
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %6, align 8
  %25 = icmp ult i64 0, %23
  br i1 %25, label %26, label %114

26:                                               ; preds = %22
  %27 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %28 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %111

36:                                               ; preds = %26
  %37 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %38 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %111

46:                                               ; preds = %36
  %47 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %48 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %135

56:                                               ; preds = %46
  %57 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 -2147483648, %59
  %61 = icmp eq i32 %60, -2147483648
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %64 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  store i32 0, i32* %3, align 4
  br label %135

69:                                               ; preds = %56
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %70 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %71 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %13, align 8
  %77 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %78 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %77, i32 0, i32 3
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %14, align 8
  %84 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %85 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %84, i32 0, i32 3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load i64, i64* %10, align 8
  %91 = shl i64 %90, 24
  %92 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %93 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  store i64 %91, i64* %95, align 8
  %96 = load i64, i64* %11, align 8
  %97 = shl i64 %96, 24
  %98 = load i64, i64* %12, align 8
  %99 = shl i64 %98, 16
  %100 = or i64 %97, %99
  %101 = load i64, i64* %13, align 8
  %102 = shl i64 %101, 8
  %103 = or i64 %100, %102
  %104 = load i64, i64* %14, align 8
  %105 = shl i64 %104, 0
  %106 = or i64 %103, %105
  %107 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %108 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  store i64 %106, i64* %110, align 8
  store i32 1, i32* %3, align 4
  br label %135

111:                                              ; preds = %36, %26
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %7, align 8
  br label %22

114:                                              ; preds = %22
  %115 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %116 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %135

120:                                              ; preds = %114
  %121 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %122 = getelementptr inbounds %struct.vub300_mmc_host, %struct.vub300_mmc_host* %121, i32 0, i32 2
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %135

130:                                              ; preds = %120
  %131 = load %struct.vub300_mmc_host*, %struct.vub300_mmc_host** %4, align 8
  %132 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @examine_cyclic_buffer(%struct.vub300_mmc_host* %131, %struct.mmc_command* %132, i64 %133)
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %130, %129, %119, %69, %62, %55
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @FUN(%struct.mmc_command*) #1

declare dso_local i64 @REG(%struct.mmc_command*) #1

declare dso_local i32 @examine_cyclic_buffer(%struct.vub300_mmc_host*, %struct.mmc_command*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
