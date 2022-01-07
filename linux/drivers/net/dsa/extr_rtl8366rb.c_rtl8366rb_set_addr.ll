; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"set MAC: %02X:%02X:%02X:%02X:%02X:%02X\0A\00", align 1
@RTL8366RB_SMAR0 = common dso_local global i32 0, align 4
@RTL8366RB_SMAR1 = common dso_local global i32 0, align 4
@RTL8366RB_SMAR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_smi*)* @rtl8366rb_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_set_addr(%struct.realtek_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_smi*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %3, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i32 @eth_random_addr(i32* %12)
  %14 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %15 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %12, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = getelementptr inbounds i32, i32* %12, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds i32, i32* %12, i64 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds i32, i32* %12, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %12, i64 4
  %26 = load i32, i32* %25, align 16
  %27 = getelementptr inbounds i32, i32* %12, i64 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20, i32 %22, i32 %24, i32 %26, i32 %28)
  %30 = getelementptr inbounds i32, i32* %12, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = shl i32 %31, 8
  %33 = getelementptr inbounds i32, i32* %12, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %32, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %37 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RTL8366RB_SMAR0, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @regmap_write(i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %1
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %81

46:                                               ; preds = %1
  %47 = getelementptr inbounds i32, i32* %12, i64 2
  %48 = load i32, i32* %47, align 8
  %49 = shl i32 %48, 8
  %50 = getelementptr inbounds i32, i32* %12, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %49, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %54 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RTL8366RB_SMAR1, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @regmap_write(i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %81

63:                                               ; preds = %46
  %64 = getelementptr inbounds i32, i32* %12, i64 4
  %65 = load i32, i32* %64, align 16
  %66 = shl i32 %65, 8
  %67 = getelementptr inbounds i32, i32* %12, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %66, %68
  store i32 %69, i32* %6, align 4
  %70 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %71 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RTL8366RB_SMAR2, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @regmap_write(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %81

80:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %80, %78, %61, %44
  %82 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eth_random_addr(i32*) #2

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @regmap_write(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
