; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_seq_print_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_seq_print_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sk_buff = type { i8* }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [14 x i8] c"    len = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"      : \00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"    nr_frags = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"    [%2d] : len = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.sk_buff*)* @wil_seq_print_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_seq_print_skb(%struct.seq_file* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @skb_headlen(%struct.sk_buff* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @wil_seq_hexdump(%struct.seq_file* %22, i8* %23, i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %2
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %56, %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @skb_frag_size(i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = call i8* @skb_frag_address_safe(i32* %46)
  store i8* %47, i8** %7, align 8
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @wil_seq_hexdump(%struct.seq_file* %52, i8* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %32

59:                                               ; preds = %32
  br label %60

60:                                               ; preds = %59, %2
  ret void
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @wil_seq_hexdump(%struct.seq_file*, i8*, i32, i8*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i8* @skb_frag_address_safe(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
