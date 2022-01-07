; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_send_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_cs.c_if_cs_send_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i64 }
%struct.if_cs_card = type { i32 }

@IF_CS_CARD_STATUS = common dso_local global i32 0, align 4
@IF_CS_BIT_TX = common dso_local global i32 0, align 4
@IF_CS_WRITE_LEN = common dso_local global i32 0, align 4
@IF_CS_WRITE = common dso_local global i32 0, align 4
@IF_CS_HOST_STATUS = common dso_local global i32 0, align 4
@IF_CS_HOST_INT_CAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*, i32*, i32)* @if_cs_send_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_cs_send_data(%struct.lbs_private* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.if_cs_card*, align 8
  %8 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.if_cs_card*
  store %struct.if_cs_card* %12, %struct.if_cs_card** %7, align 8
  %13 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %14 = call i32 @if_cs_disable_ints(%struct.if_cs_card* %13)
  %15 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %16 = load i32, i32* @IF_CS_CARD_STATUS, align 4
  %17 = call i32 @if_cs_read16(%struct.if_cs_card* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @IF_CS_BIT_TX, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %25 = load i32, i32* @IF_CS_WRITE_LEN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @if_cs_write16(%struct.if_cs_card* %24, i32 %25, i32 %26)
  %28 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %29 = load i32, i32* @IF_CS_WRITE, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sdiv i32 %31, 2
  %33 = call i32 @if_cs_write16_rep(%struct.if_cs_card* %28, i32 %29, i32* %30, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %3
  %38 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %39 = load i32, i32* @IF_CS_WRITE, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @if_cs_write8(%struct.if_cs_card* %38, i32 %39, i32 %45)
  br label %47

47:                                               ; preds = %37, %3
  %48 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %49 = load i32, i32* @IF_CS_HOST_STATUS, align 4
  %50 = load i32, i32* @IF_CS_BIT_TX, align 4
  %51 = call i32 @if_cs_write16(%struct.if_cs_card* %48, i32 %49, i32 %50)
  %52 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %53 = load i32, i32* @IF_CS_HOST_INT_CAUSE, align 4
  %54 = load i32, i32* @IF_CS_BIT_TX, align 4
  %55 = call i32 @if_cs_write16(%struct.if_cs_card* %52, i32 %53, i32 %54)
  %56 = load %struct.if_cs_card*, %struct.if_cs_card** %7, align 8
  %57 = call i32 @if_cs_enable_ints(%struct.if_cs_card* %56)
  ret void
}

declare dso_local i32 @if_cs_disable_ints(%struct.if_cs_card*) #1

declare dso_local i32 @if_cs_read16(%struct.if_cs_card*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @if_cs_write16(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_write16_rep(%struct.if_cs_card*, i32, i32*, i32) #1

declare dso_local i32 @if_cs_write8(%struct.if_cs_card*, i32, i32) #1

declare dso_local i32 @if_cs_enable_ints(%struct.if_cs_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
