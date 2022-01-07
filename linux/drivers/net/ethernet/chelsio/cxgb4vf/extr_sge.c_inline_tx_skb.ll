; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_inline_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_sge.c_inline_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.sge_txq = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sge_txq*, i8*)* @inline_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inline_tx_skb(%struct.sk_buff* %0, %struct.sge_txq* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %10 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i8*, i8** %6, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sle i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %36, i8* %37, i32 %40)
  br label %49

42:                                               ; preds = %26
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @skb_copy_bits(%struct.sk_buff* %43, i32 0, i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr i8, i8* %53, i64 %54
  store i8* %55, i8** %6, align 8
  br label %82

56:                                               ; preds = %3
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @skb_copy_bits(%struct.sk_buff* %57, i32 0, i8* %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %64 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @skb_copy_bits(%struct.sk_buff* %61, i32 %62, i8* %65, i32 %70)
  %72 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %73 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %74, i64 %80
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %56, %49
  %83 = load i8*, i8** %6, align 8
  %84 = call i64* @PTR_ALIGN(i8* %83, i32 8)
  store i64* %84, i64** %7, align 8
  %85 = load i64*, i64** %7, align 8
  %86 = ptrtoint i64* %85 to i64
  %87 = and i64 %86, 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i64*, i64** %7, align 8
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %89, %82
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i64* @PTR_ALIGN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
