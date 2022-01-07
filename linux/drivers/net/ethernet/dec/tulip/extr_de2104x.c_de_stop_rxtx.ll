; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_stop_rxtx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_stop_rxtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32 }

@MacMode = common dso_local global i32 0, align 4
@RxTx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout expired, stopping DMA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*)* @de_stop_rxtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de_stop_rxtx(%struct.de_private* %0) #0 {
  %2 = alloca %struct.de_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %2, align 8
  store i32 13, i32* %4, align 4
  %5 = load i32, i32* @MacMode, align 4
  %6 = call i32 @dr32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @RxTx, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @MacMode, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RxTx, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = call i32 @dw32(i32 %12, i32 %16)
  %18 = load i32, i32* @MacMode, align 4
  %19 = call i32 @dr32(i32 %18)
  br label %20

20:                                               ; preds = %11, %1
  br label %21

21:                                               ; preds = %30, %20
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.de_private*, %struct.de_private** %2, align 8
  %27 = call i32 @de_is_running(%struct.de_private* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %37

30:                                               ; preds = %25
  %31 = call i32 @udelay(i32 100)
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.de_private*, %struct.de_private** %2, align 8
  %34 = getelementptr inbounds %struct.de_private, %struct.de_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netdev_warn(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @dw32(i32, i32) #1

declare dso_local i32 @de_is_running(%struct.de_private*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
