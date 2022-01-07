; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_white_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_set_white_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@REG_COM8 = common dso_local global i32 0, align 4
@REG_BLUE = common dso_local global i32 0, align 4
@REG_RED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, i32)* @ov965x_set_white_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_set_white_balance(%struct.ov965x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %9 = load i32, i32* @REG_COM8, align 4
  %10 = call i32 @ov965x_read(%struct.ov965x* %8, i32 %9, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @REG_COM8, align 4
  %19 = or i32 %17, %18
  br label %25

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @REG_COM8, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i32 [ %19, %16 ], [ %24, %20 ]
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %28 = load i32, i32* @REG_COM8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ov965x_write(%struct.ov965x* %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %25, %2
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %61, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %34
  %38 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %39 = load i32, i32* @REG_BLUE, align 4
  %40 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %41 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ov965x_write(%struct.ov965x* %38, i32 %39, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %37
  %52 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %53 = load i32, i32* @REG_RED, align 4
  %54 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %55 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ov965x_write(%struct.ov965x* %52, i32 %53, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %51, %34, %31
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ov965x_read(%struct.ov965x*, i32, i32*) #1

declare dso_local i32 @ov965x_write(%struct.ov965x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
