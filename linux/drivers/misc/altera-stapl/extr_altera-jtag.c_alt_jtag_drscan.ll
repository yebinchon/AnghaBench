; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_alt_jtag_drscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_alt_jtag_drscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_state*, i32, i32, i32*, i32*)* @alt_jtag_drscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alt_jtag_drscan(%struct.altera_state* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.altera_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.altera_state* %0, %struct.altera_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %31 [
    i32 0, label %15
    i32 1, label %19
    i32 2, label %25
  ]

15:                                               ; preds = %5
  %16 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %17 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  %18 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  br label %32

19:                                               ; preds = %5
  %20 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %21 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %22 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %23 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  %24 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  br label %32

25:                                               ; preds = %5
  %26 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %27 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %28 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %29 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  %30 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  br label %32

31:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %31, %25, %19, %15
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %95

35:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %90, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %93

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 7
  %54 = shl i32 1, %53
  %55 = and i32 %51, %54
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @alt_jtag_io(i32 %45, i32 %55, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %40
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 7
  %68 = shl i32 1, %67
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = ashr i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %68
  store i32 %75, i32* %73, align 4
  br label %88

76:                                               ; preds = %62
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, 7
  %79 = shl i32 1, %78
  %80 = xor i32 %79, -1
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %80
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %76, %65
  br label %89

89:                                               ; preds = %88, %40
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %36

93:                                               ; preds = %36
  %94 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  br label %95

95:                                               ; preds = %93, %32
  %96 = load i32, i32* %13, align 4
  ret i32 %96
}

declare dso_local i32 @alt_jtag_io(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
