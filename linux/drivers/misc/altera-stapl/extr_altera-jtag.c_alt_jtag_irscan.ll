; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_alt_jtag_irscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_alt_jtag_irscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_state*, i32, i32, i32*, i32*)* @alt_jtag_irscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alt_jtag_irscan(%struct.altera_state* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
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
  switch i32 %14, label %34 [
    i32 0, label %15
    i32 1, label %20
    i32 2, label %27
  ]

15:                                               ; preds = %5
  %16 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %17 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %18 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  %19 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  br label %35

20:                                               ; preds = %5
  %21 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %22 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %23 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %24 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %25 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  %26 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  br label %35

27:                                               ; preds = %5
  %28 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %29 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %30 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %31 = call i32 @alt_jtag_io(i32 1, i32 0, i32 0)
  %32 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  %33 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  br label %35

34:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %34, %27, %20, %15
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %98

38:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %93, %38
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %96

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 7
  %57 = shl i32 1, %56
  %58 = and i32 %54, %57
  %59 = load i32*, i32** %10, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @alt_jtag_io(i32 %48, i32 %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %43
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 7
  %71 = shl i32 1, %70
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = ashr i32 %73, 3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 4
  br label %91

79:                                               ; preds = %65
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 7
  %82 = shl i32 1, %81
  %83 = xor i32 %82, -1
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = ashr i32 %85, 3
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %83
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %79, %68
  br label %92

92:                                               ; preds = %91, %43
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %39

96:                                               ; preds = %39
  %97 = call i32 @alt_jtag_io(i32 0, i32 0, i32 0)
  br label %98

98:                                               ; preds = %96, %35
  %99 = load i32, i32* %13, align 4
  ret i32 %99
}

declare dso_local i32 @alt_jtag_io(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
