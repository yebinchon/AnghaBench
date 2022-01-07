; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_otp_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_otp_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32* }

@ASIC_REV_5762 = common dso_local global i64 0, align 8
@OTP_ADDRESS_MAGIC0 = common dso_local global i64 0, align 8
@TG3_VER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c" .%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_read_otp_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_read_otp_ver(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %9 = load %struct.tg3*, %struct.tg3** %2, align 8
  %10 = call i64 @tg3_asic_rev(%struct.tg3* %9)
  %11 = load i64, i64* @ASIC_REV_5762, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %67

14:                                               ; preds = %1
  %15 = load %struct.tg3*, %struct.tg3** %2, align 8
  %16 = load i64, i64* @OTP_ADDRESS_MAGIC0, align 8
  %17 = call i32 @tg3_ape_otp_read(%struct.tg3* %15, i64 %16, i32* %3)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %67, label %19

19:                                               ; preds = %14
  %20 = load %struct.tg3*, %struct.tg3** %2, align 8
  %21 = load i64, i64* @OTP_ADDRESS_MAGIC0, align 8
  %22 = add nsw i64 %21, 4
  %23 = call i32 @tg3_ape_otp_read(%struct.tg3* %20, i64 %22, i32* %4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %67, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @TG3_OTP_MAGIC0_VALID(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %30, 32
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %47, %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 7
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 8
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %34

50:                                               ; preds = %41, %34
  %51 = load %struct.tg3*, %struct.tg3** %2, align 8
  %52 = getelementptr inbounds %struct.tg3, %struct.tg3* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @strlen(i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.tg3*, %struct.tg3** %2, align 8
  %56 = getelementptr inbounds %struct.tg3, %struct.tg3* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i64, i64* @TG3_VER_SIZE, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %61, %63
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @snprintf(i32* %60, i64 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %13, %50, %25, %19, %14
  ret void
}

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_ape_otp_read(%struct.tg3*, i64, i32*) #1

declare dso_local i64 @TG3_OTP_MAGIC0_VALID(i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
