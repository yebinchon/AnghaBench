; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_media_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_media_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i64, i32, i32, i64 }

@LinkPass = common dso_local global i32 0, align 4
@DE_MEDIA_AUI = common dso_local global i64 0, align 8
@DE_MEDIA_BNC = common dso_local global i64 0, align 8
@DE_MEDIA_TP_AUTO = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@DE_TIMER_LINK = common dso_local global i64 0, align 8
@LinkFail = common dso_local global i32 0, align 4
@DE_TIMER_NO_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*, i32)* @de_media_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_media_interrupt(%struct.de_private* %0, i32 %1) #0 {
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @LinkPass, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %2
  %10 = load %struct.de_private*, %struct.de_private** %3, align 8
  %11 = getelementptr inbounds %struct.de_private, %struct.de_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DE_MEDIA_AUI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.de_private*, %struct.de_private** %3, align 8
  %17 = getelementptr inbounds %struct.de_private, %struct.de_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DE_MEDIA_BNC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15, %9
  %22 = load %struct.de_private*, %struct.de_private** %3, align 8
  %23 = getelementptr inbounds %struct.de_private, %struct.de_private* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.de_private*, %struct.de_private** %3, align 8
  %28 = load i64, i64* @DE_MEDIA_TP_AUTO, align 8
  %29 = call i32 @de_ok_to_advertise(%struct.de_private* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %21
  br label %97

32:                                               ; preds = %26, %15
  %33 = load %struct.de_private*, %struct.de_private** %3, align 8
  %34 = getelementptr inbounds %struct.de_private, %struct.de_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DE_MEDIA_AUI, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.de_private*, %struct.de_private** %3, align 8
  %40 = getelementptr inbounds %struct.de_private, %struct.de_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DE_MEDIA_BNC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38, %32
  %45 = load i64, i64* @DE_MEDIA_TP_AUTO, align 8
  %46 = load %struct.de_private*, %struct.de_private** %3, align 8
  %47 = getelementptr inbounds %struct.de_private, %struct.de_private* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.de_private*, %struct.de_private** %3, align 8
  %49 = call i32 @de_stop_rxtx(%struct.de_private* %48)
  %50 = load %struct.de_private*, %struct.de_private** %3, align 8
  %51 = call i32 @de_set_media(%struct.de_private* %50)
  %52 = load %struct.de_private*, %struct.de_private** %3, align 8
  %53 = call i32 @de_start_rxtx(%struct.de_private* %52)
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.de_private*, %struct.de_private** %3, align 8
  %56 = call i32 @de_link_up(%struct.de_private* %55)
  %57 = load %struct.de_private*, %struct.de_private** %3, align 8
  %58 = getelementptr inbounds %struct.de_private, %struct.de_private* %57, i32 0, i32 1
  %59 = load i64, i64* @jiffies, align 8
  %60 = load i64, i64* @DE_TIMER_LINK, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @mod_timer(i32* %58, i64 %61)
  br label %97

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @LinkFail, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.de_private*, %struct.de_private** %3, align 8
  %72 = getelementptr inbounds %struct.de_private, %struct.de_private* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @netif_carrier_ok(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %63
  %77 = load %struct.de_private*, %struct.de_private** %3, align 8
  %78 = getelementptr inbounds %struct.de_private, %struct.de_private* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DE_MEDIA_AUI, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load %struct.de_private*, %struct.de_private** %3, align 8
  %84 = getelementptr inbounds %struct.de_private, %struct.de_private* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DE_MEDIA_BNC, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load %struct.de_private*, %struct.de_private** %3, align 8
  %90 = call i32 @de_link_down(%struct.de_private* %89)
  %91 = load %struct.de_private*, %struct.de_private** %3, align 8
  %92 = getelementptr inbounds %struct.de_private, %struct.de_private* %91, i32 0, i32 1
  %93 = load i64, i64* @jiffies, align 8
  %94 = load i64, i64* @DE_TIMER_NO_LINK, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @mod_timer(i32* %92, i64 %95)
  br label %97

97:                                               ; preds = %31, %54, %88, %82, %76, %63
  ret void
}

declare dso_local i32 @de_ok_to_advertise(%struct.de_private*, i64) #1

declare dso_local i32 @de_stop_rxtx(%struct.de_private*) #1

declare dso_local i32 @de_set_media(%struct.de_private*) #1

declare dso_local i32 @de_start_rxtx(%struct.de_private*) #1

declare dso_local i32 @de_link_up(%struct.de_private*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @de_link_down(%struct.de_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
