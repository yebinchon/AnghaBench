; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_rss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_rss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_rss_init(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %7, i32 0, i32 0
  %9 = call i32 @memset(i32* %8, i32 0, i32 4)
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @ena_com_indirect_table_allocate(%struct.ena_com_dev* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %19 = call i32 @ena_com_hash_key_allocate(%struct.ena_com_dev* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %35

24:                                               ; preds = %17
  %25 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %26 = call i32 @ena_com_hash_ctrl_init(%struct.ena_com_dev* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %40

32:                                               ; preds = %30
  %33 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %34 = call i32 @ena_com_hash_key_destroy(%struct.ena_com_dev* %33)
  br label %35

35:                                               ; preds = %32, %23
  %36 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %37 = call i32 @ena_com_indirect_table_destroy(%struct.ena_com_dev* %36)
  br label %38

38:                                               ; preds = %35, %16
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %31
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ena_com_indirect_table_allocate(%struct.ena_com_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_hash_key_allocate(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_hash_ctrl_init(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_hash_key_destroy(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_indirect_table_destroy(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
