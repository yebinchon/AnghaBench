; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_z80_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_z80_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@SDLA_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i8, i8)* @sdla_z80_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_z80_poll(%struct.net_device* %0, i32 %1, i32 %2, i8 signext %3, i8 signext %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %16 = load i32, i32* @jiffies, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %13, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %15, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SDLA_ADDR_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i8*, i8** %15, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %15, align 8
  %32 = load i8, i8* %9, align 1
  %33 = sext i8 %32 to i32
  %34 = xor i32 %33, -1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %14, align 1
  br label %36

36:                                               ; preds = %73, %5
  %37 = load i32, i32* @jiffies, align 4
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @time_before(i32 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %36
  %42 = load i8, i8* %14, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i8, i8* %10, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i8, i8* %14, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %10, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %52, %54
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi i1 [ true, %47 ], [ %55, %50 ]
  br label %58

58:                                               ; preds = %56, %41, %36
  %59 = phi i1 [ false, %41 ], [ false, %36 ], [ %57, %56 ]
  br i1 %59, label %60, label %74

60:                                               ; preds = %58
  %61 = load i32, i32* @jiffies, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @SDLA_WINDOW(%struct.net_device* %66, i32 %67)
  %69 = load i32, i32* @jiffies, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %13, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %14, align 1
  br label %73

73:                                               ; preds = %65, %60
  br label %36

74:                                               ; preds = %58
  %75 = load i32, i32* @jiffies, align 4
  %76 = load i64, i64* %12, align 8
  %77 = call i64 @time_before(i32 %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @jiffies, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %11, align 8
  %83 = sub i64 %81, %82
  br label %85

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84, %79
  %86 = phi i64 [ %83, %79 ], [ -1, %84 ]
  %87 = trunc i64 %86 to i32
  ret i32 %87
}

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @SDLA_WINDOW(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
