; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fill_accept_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_fill_accept_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_ACCEPT_UNICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_MULTICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_BROADCAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ALL_MULTICAST = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_UNMATCHED = common dso_local global i32 0, align 4
@BNX2X_ACCEPT_ALL_UNICAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown rx_mode: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i64*, i64*)* @bnx2x_fill_accept_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_fill_accept_flags(%struct.bnx2x* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load i64*, i64** %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %9, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %113 [
    i32 130, label %13
    i32 129, label %14
    i32 131, label %45
    i32 128, label %76
  ]

13:                                               ; preds = %4
  br label %118

14:                                               ; preds = %4
  %15 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %16 = load i64*, i64** %8, align 8
  %17 = call i32 @__set_bit(i32 %15, i64* %16)
  %18 = load i32, i32* @BNX2X_ACCEPT_MULTICAST, align 4
  %19 = load i64*, i64** %8, align 8
  %20 = call i32 @__set_bit(i32 %18, i64* %19)
  %21 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %22 = load i64*, i64** %8, align 8
  %23 = call i32 @__set_bit(i32 %21, i64* %22)
  %24 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %25 = load i64*, i64** %9, align 8
  %26 = call i32 @__set_bit(i32 %24, i64* %25)
  %27 = load i32, i32* @BNX2X_ACCEPT_MULTICAST, align 4
  %28 = load i64*, i64** %9, align 8
  %29 = call i32 @__set_bit(i32 %27, i64* %28)
  %30 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %31 = load i64*, i64** %9, align 8
  %32 = call i32 @__set_bit(i32 %30, i64* %31)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %14
  %38 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %39 = load i64*, i64** %8, align 8
  %40 = call i32 @__set_bit(i32 %38, i64* %39)
  %41 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %42 = load i64*, i64** %9, align 8
  %43 = call i32 @__set_bit(i32 %41, i64* %42)
  br label %44

44:                                               ; preds = %37, %14
  br label %118

45:                                               ; preds = %4
  %46 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %47 = load i64*, i64** %8, align 8
  %48 = call i32 @__set_bit(i32 %46, i64* %47)
  %49 = load i32, i32* @BNX2X_ACCEPT_ALL_MULTICAST, align 4
  %50 = load i64*, i64** %8, align 8
  %51 = call i32 @__set_bit(i32 %49, i64* %50)
  %52 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %53 = load i64*, i64** %8, align 8
  %54 = call i32 @__set_bit(i32 %52, i64* %53)
  %55 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %56 = load i64*, i64** %9, align 8
  %57 = call i32 @__set_bit(i32 %55, i64* %56)
  %58 = load i32, i32* @BNX2X_ACCEPT_ALL_MULTICAST, align 4
  %59 = load i64*, i64** %9, align 8
  %60 = call i32 @__set_bit(i32 %58, i64* %59)
  %61 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %62 = load i64*, i64** %9, align 8
  %63 = call i32 @__set_bit(i32 %61, i64* %62)
  %64 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %65 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %45
  %69 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %70 = load i64*, i64** %8, align 8
  %71 = call i32 @__set_bit(i32 %69, i64* %70)
  %72 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %73 = load i64*, i64** %9, align 8
  %74 = call i32 @__set_bit(i32 %72, i64* %73)
  br label %75

75:                                               ; preds = %68, %45
  br label %118

76:                                               ; preds = %4
  %77 = load i32, i32* @BNX2X_ACCEPT_UNMATCHED, align 4
  %78 = load i64*, i64** %8, align 8
  %79 = call i32 @__set_bit(i32 %77, i64* %78)
  %80 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %81 = load i64*, i64** %8, align 8
  %82 = call i32 @__set_bit(i32 %80, i64* %81)
  %83 = load i32, i32* @BNX2X_ACCEPT_ALL_MULTICAST, align 4
  %84 = load i64*, i64** %8, align 8
  %85 = call i32 @__set_bit(i32 %83, i64* %84)
  %86 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %87 = load i64*, i64** %8, align 8
  %88 = call i32 @__set_bit(i32 %86, i64* %87)
  %89 = load i32, i32* @BNX2X_ACCEPT_ALL_MULTICAST, align 4
  %90 = load i64*, i64** %9, align 8
  %91 = call i32 @__set_bit(i32 %89, i64* %90)
  %92 = load i32, i32* @BNX2X_ACCEPT_BROADCAST, align 4
  %93 = load i64*, i64** %9, align 8
  %94 = call i32 @__set_bit(i32 %92, i64* %93)
  %95 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %96 = call i32 @IS_MF_SI(%struct.bnx2x* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %76
  %99 = load i32, i32* @BNX2X_ACCEPT_ALL_UNICAST, align 4
  %100 = load i64*, i64** %9, align 8
  %101 = call i32 @__set_bit(i32 %99, i64* %100)
  br label %106

102:                                              ; preds = %76
  %103 = load i32, i32* @BNX2X_ACCEPT_UNICAST, align 4
  %104 = load i64*, i64** %9, align 8
  %105 = call i32 @__set_bit(i32 %103, i64* %104)
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %108 = load i64*, i64** %8, align 8
  %109 = call i32 @__set_bit(i32 %107, i64* %108)
  %110 = load i32, i32* @BNX2X_ACCEPT_ANY_VLAN, align 4
  %111 = load i64*, i64** %9, align 8
  %112 = call i32 @__set_bit(i32 %110, i64* %111)
  br label %118

113:                                              ; preds = %4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %119

118:                                              ; preds = %106, %75, %44, %13
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %113
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @IS_MF_SI(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
