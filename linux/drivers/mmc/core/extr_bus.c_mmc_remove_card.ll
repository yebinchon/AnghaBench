; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_remove_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_bus.c_mmc_remove_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { %struct.TYPE_5__, i32, %struct.mmc_host* }
%struct.TYPE_5__ = type { i32 }
%struct.mmc_host = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mmc_host*)* }

@.str = private unnamed_addr constant [22 x i8] c"%s: SPI card removed\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: card %04x removed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_remove_card(%struct.mmc_card* %0) #0 {
  %2 = alloca %struct.mmc_card*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %2, align 8
  %4 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %4, i32 0, i32 2
  %6 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  store %struct.mmc_host* %6, %struct.mmc_host** %3, align 8
  %7 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.mmc_host*)*, i32 (%struct.mmc_host*)** %15, align 8
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = call i32 %16(%struct.mmc_host* %17)
  %19 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %23 = call i64 @mmc_card_present(%struct.mmc_card* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  %26 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %26, i32 0, i32 2
  %28 = load %struct.mmc_host*, %struct.mmc_host** %27, align 8
  %29 = call i64 @mmc_host_is_spi(%struct.mmc_host* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %33 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %32, i32 0, i32 2
  %34 = load %struct.mmc_host*, %struct.mmc_host** %33, align 8
  %35 = call i32 @mmc_hostname(%struct.mmc_host* %34)
  %36 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %46

37:                                               ; preds = %25
  %38 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %39 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %38, i32 0, i32 2
  %40 = load %struct.mmc_host*, %struct.mmc_host** %39, align 8
  %41 = call i32 @mmc_hostname(%struct.mmc_host* %40)
  %42 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %31
  %47 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %48 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %47, i32 0, i32 0
  %49 = call i32 @device_del(%struct.TYPE_5__* %48)
  %50 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %51 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @of_node_put(i32 %53)
  br label %55

55:                                               ; preds = %46, %21
  %56 = load %struct.mmc_card*, %struct.mmc_card** %2, align 8
  %57 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %56, i32 0, i32 0
  %58 = call i32 @put_device(%struct.TYPE_5__* %57)
  ret void
}

declare dso_local i64 @mmc_card_present(%struct.mmc_card*) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i32 @device_del(%struct.TYPE_5__*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
