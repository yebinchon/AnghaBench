; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_fixup_convert_atmel_pri.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_cmdset_0002.c_fixup_convert_atmel_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.map_info* }
%struct.map_info = type { %struct.cfi_private* }
%struct.cfi_private = type { i64, %struct.TYPE_2__*, %struct.cfi_pri_amdstd* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.cfi_pri_amdstd = type { i32, i32 }
%struct.cfi_pri_atmel = type { i32, i64 }

@AT49BV6416 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @fixup_convert_atmel_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_convert_atmel_pri(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca %struct.cfi_private*, align 8
  %5 = alloca %struct.cfi_pri_amdstd*, align 8
  %6 = alloca %struct.cfi_pri_atmel, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.map_info*, %struct.map_info** %8, align 8
  store %struct.map_info* %9, %struct.map_info** %3, align 8
  %10 = load %struct.map_info*, %struct.map_info** %3, align 8
  %11 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 0
  %12 = load %struct.cfi_private*, %struct.cfi_private** %11, align 8
  store %struct.cfi_private* %12, %struct.cfi_private** %4, align 8
  %13 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %14 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %13, i32 0, i32 2
  %15 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %14, align 8
  store %struct.cfi_pri_amdstd* %15, %struct.cfi_pri_amdstd** %5, align 8
  %16 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %5, align 8
  %17 = call i32 @memcpy(%struct.cfi_pri_atmel* %6, %struct.cfi_pri_amdstd* %16, i32 16)
  %18 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %5, align 8
  %19 = bitcast %struct.cfi_pri_amdstd* %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 5
  %21 = call i32 @memset(i8* %20, i32 0, i32 3)
  %22 = getelementptr inbounds %struct.cfi_pri_atmel, %struct.cfi_pri_atmel* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %5, align 8
  %28 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %27, i32 0, i32 0
  store i32 2, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %31 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AT49BV6416, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.cfi_pri_atmel, %struct.cfi_pri_atmel* %6, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %5, align 8
  %41 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %40, i32 0, i32 1
  store i32 3, i32* %41, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %5, align 8
  %44 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %43, i32 0, i32 1
  store i32 2, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %57

46:                                               ; preds = %29
  %47 = getelementptr inbounds %struct.cfi_pri_atmel, %struct.cfi_pri_atmel* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %5, align 8
  %52 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %51, i32 0, i32 1
  store i32 2, i32* %52, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.cfi_pri_amdstd*, %struct.cfi_pri_amdstd** %5, align 8
  %55 = getelementptr inbounds %struct.cfi_pri_amdstd, %struct.cfi_pri_amdstd* %54, i32 0, i32 1
  store i32 3, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %59 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.cfi_private*, %struct.cfi_private** %4, align 8
  %63 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.cfi_pri_atmel*, %struct.cfi_pri_amdstd*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
