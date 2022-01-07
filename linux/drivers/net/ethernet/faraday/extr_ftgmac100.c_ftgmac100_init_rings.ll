; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i32, i32, i32, i32, i32, %struct.ftgmac100_txdes*, i32, i32, %struct.ftgmac100_rxdes* }
%struct.ftgmac100_txdes = type { i32 }
%struct.ftgmac100_rxdes = type { i32, i32 }

@MIN_RX_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*)* @ftgmac100_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_init_rings(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  %3 = alloca %struct.ftgmac100_rxdes*, align 8
  %4 = alloca %struct.ftgmac100_txdes*, align 8
  %5 = alloca i32, align 4
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  store %struct.ftgmac100_rxdes* null, %struct.ftgmac100_rxdes** %3, align 8
  store %struct.ftgmac100_txdes* null, %struct.ftgmac100_txdes** %4, align 8
  %6 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %7 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %10 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %12 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %15 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %17 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MIN_RX_QUEUE_ENTRIES, align 4
  %20 = icmp slt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %96

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %47, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %29 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %34 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %33, i32 0, i32 8
  %35 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %35, i64 %37
  store %struct.ftgmac100_rxdes* %38, %struct.ftgmac100_rxdes** %3, align 8
  %39 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %3, align 8
  %40 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %42 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %3, align 8
  %46 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %52 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cpu_to_le32(i32 %53)
  %55 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %3, align 8
  %56 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %60 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MIN_RX_QUEUE_ENTRIES, align 4
  %63 = icmp slt i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  br label %96

68:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %72 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %77 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %76, i32 0, i32 5
  %78 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %78, i64 %80
  store %struct.ftgmac100_txdes* %81, %struct.ftgmac100_txdes** %4, align 8
  %82 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %4, align 8
  %83 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %69

87:                                               ; preds = %69
  %88 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %89 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @cpu_to_le32(i32 %90)
  %92 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %4, align 8
  %93 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %87, %67, %24
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
