; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_GetCHRegister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mxl5005s.c_MXL_GetCHRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@MXL_GetCHRegister.RegAddr = internal constant [26 x i32] [i32 14, i32 15, i32 16, i32 17, i32 22, i32 43, i32 68, i32 69, i32 70, i32 73, i32 92, i32 93, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 136, i32 138, i32 149, i32 77, i32 166, i32 167, i32 168], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32*, i32*)* @MXL_GetCHRegister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MXL_GetCHRegister(%struct.dvb_frontend* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([26 x i32], [26 x i32]* @MXL_GetCHRegister.RegAddr, i64 0, i64 0))
  %12 = load i32*, i32** %8, align 8
  store i32 %11, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %42, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [26 x i32], [26 x i32]* @MXL_GetCHRegister.RegAddr, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %22, i32* %26, align 4
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @MXL_RegRead(%struct.dvb_frontend* %27, i32 %32, i32* %36)
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %18
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %13

45:                                               ; preds = %13
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @MXL_RegRead(%struct.dvb_frontend*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
