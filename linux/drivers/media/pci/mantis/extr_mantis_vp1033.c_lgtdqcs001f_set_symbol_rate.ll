; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp1033.c_lgtdqcs001f_set_symbol_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_vp1033.c_lgtdqcs001f_set_symbol_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @lgtdqcs001f_set_symbol_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgtdqcs001f_set_symbol_rate(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 1500000
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 183, i32* %7, align 4
  store i32 71, i32* %8, align 4
  br label %37

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 3000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 183, i32* %7, align 4
  store i32 75, i32* %8, align 4
  br label %36

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 7000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 183, i32* %7, align 4
  store i32 79, i32* %8, align 4
  br label %35

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 14000000
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 183, i32* %7, align 4
  store i32 83, i32* %8, align 4
  br label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 30000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 182, i32* %7, align 4
  store i32 83, i32* %8, align 4
  br label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 45000000
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 180, i32* %7, align 4
  store i32 81, i32* %8, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %27
  br label %34

34:                                               ; preds = %33, %23
  br label %35

35:                                               ; preds = %34, %19
  br label %36

36:                                               ; preds = %35, %15
  br label %37

37:                                               ; preds = %36, %11
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @stv0299_writereg(%struct.dvb_frontend* %38, i32 19, i32 %39)
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @stv0299_writereg(%struct.dvb_frontend* %41, i32 20, i32 %42)
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 255
  %48 = call i32 @stv0299_writereg(%struct.dvb_frontend* %44, i32 31, i32 %47)
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 255
  %53 = call i32 @stv0299_writereg(%struct.dvb_frontend* %49, i32 32, i32 %52)
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 240
  %57 = call i32 @stv0299_writereg(%struct.dvb_frontend* %54, i32 33, i32 %56)
  ret i32 0
}

declare dso_local i32 @stv0299_writereg(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
