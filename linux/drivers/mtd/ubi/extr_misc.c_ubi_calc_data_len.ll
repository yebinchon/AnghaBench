; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_misc.c_ubi_calc_data_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_misc.c_ubi_calc_data_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_calc_data_len(%struct.ubi_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %8, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ubi_assert(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %33, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %7, align 4
  br label %20

36:                                               ; preds = %31, %20
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %40 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ALIGN(i32 %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
