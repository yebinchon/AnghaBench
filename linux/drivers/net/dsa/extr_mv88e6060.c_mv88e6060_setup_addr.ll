; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_setup_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_setup_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6060_priv = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@REG_GLOBAL = common dso_local global i32 0, align 4
@GLOBAL_MAC_01 = common dso_local global i32 0, align 4
@GLOBAL_MAC_23 = common dso_local global i32 0, align 4
@GLOBAL_MAC_45 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6060_priv*)* @mv88e6060_setup_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6060_setup_addr(%struct.mv88e6060_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6060_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6060_priv* %0, %struct.mv88e6060_priv** %3, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i32 @eth_random_addr(i32* %12)
  %14 = getelementptr inbounds i32, i32* %12, i64 0
  %15 = load i32, i32* %14, align 16
  %16 = shl i32 %15, 8
  %17 = getelementptr inbounds i32, i32* %12, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 65279
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %23 = load i32, i32* @REG_GLOBAL, align 4
  %24 = load i32, i32* @GLOBAL_MAC_01, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @reg_write(%struct.mv88e6060_priv* %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

31:                                               ; preds = %1
  %32 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %33 = load i32, i32* @REG_GLOBAL, align 4
  %34 = load i32, i32* @GLOBAL_MAC_23, align 4
  %35 = getelementptr inbounds i32, i32* %12, i64 2
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 8
  %38 = getelementptr inbounds i32, i32* %12, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %37, %39
  %41 = call i32 @reg_write(%struct.mv88e6060_priv* %32, i32 %33, i32 %34, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

46:                                               ; preds = %31
  %47 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %3, align 8
  %48 = load i32, i32* @REG_GLOBAL, align 4
  %49 = load i32, i32* @GLOBAL_MAC_45, align 4
  %50 = getelementptr inbounds i32, i32* %12, i64 4
  %51 = load i32, i32* %50, align 16
  %52 = shl i32 %51, 8
  %53 = getelementptr inbounds i32, i32* %12, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %52, %54
  %56 = call i32 @reg_write(%struct.mv88e6060_priv* %47, i32 %48, i32 %49, i32 %55)
  store i32 %56, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %57

57:                                               ; preds = %46, %44, %29
  %58 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eth_random_addr(i32*) #2

declare dso_local i32 @reg_write(%struct.mv88e6060_priv*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
