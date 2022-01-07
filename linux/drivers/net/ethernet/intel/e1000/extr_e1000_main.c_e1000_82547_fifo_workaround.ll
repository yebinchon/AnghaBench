; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_82547_fifo_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_82547_fifo_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i64, i64, i64, i32 }
%struct.sk_buff = type { i64 }

@E1000_FIFO_HDR = common dso_local global i64 0, align 8
@HALF_DUPLEX = common dso_local global i64 0, align 8
@E1000_82547_PAD_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, %struct.sk_buff*)* @e1000_82547_fifo_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_82547_fifo_workaround(%struct.e1000_adapter* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @E1000_FIFO_HDR, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @E1000_FIFO_HDR, align 8
  %22 = call i64 @ALIGN(i64 %20, i64 %21)
  store i64 %22, i64* %7, align 8
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HALF_DUPLEX, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %46

29:                                               ; preds = %2
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 3
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %68

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @E1000_82547_PAD_LEN, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %37, %38
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %42, i32 0, i32 3
  %44 = call i32 @atomic_set(i32* %43, i32 1)
  store i32 1, i32* %3, align 4
  br label %68

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %49 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, %62
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %59, %46
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %41, %34
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
