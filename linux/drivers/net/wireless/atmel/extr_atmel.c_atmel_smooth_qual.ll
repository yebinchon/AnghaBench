; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_smooth_qual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_atmel_smooth_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_QUAL_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*)* @atmel_smooth_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_smooth_qual(%struct.atmel_private* %0) #0 {
  %2 = alloca %struct.atmel_private*, align 8
  %3 = alloca i64, align 8
  store %struct.atmel_private* %0, %struct.atmel_private** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %6 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sub i64 %4, %7
  %9 = load i64, i64* @HZ, align 8
  %10 = udiv i64 %8, %9
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %3, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load i64, i64* @HZ, align 8
  %17 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %18 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %19, %16
  store i64 %20, i64* %18, align 8
  %21 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %22 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 2
  %27 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %28 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %32 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %35 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %39 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 100
  %44 = mul nsw i32 %37, %43
  %45 = sdiv i32 %44, 4000
  %46 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %47 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, %45
  store i32 %51, i32* %49, align 8
  %52 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %53 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %11

54:                                               ; preds = %11
  %55 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %56 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %57 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %55
  store i32 %61, i32* %59, align 8
  %62 = load i32, i32* @IW_QUAL_QUAL_INVALID, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %65 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, %63
  store i32 %69, i32* %67, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
