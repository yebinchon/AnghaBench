; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_init_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_init_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EVENT_STAT_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan78xx_net*)* @lan78xx_init_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_init_stats(%struct.lan78xx_net* %0) #0 {
  %2 = alloca %struct.lan78xx_net*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %2, align 8
  %5 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %6 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = bitcast %struct.TYPE_3__* %7 to i32*
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %18, %1
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 10
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 1048575, i32* %17, align 4
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %23 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  %26 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %27 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %31 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 -1, i32* %33, align 4
  %34 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %35 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32 -1, i32* %37, align 4
  %38 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %39 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store i32 -1, i32* %41, align 4
  %42 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %43 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  store i32 -1, i32* %45, align 4
  %46 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %47 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 6
  store i32 -1, i32* %49, align 4
  %50 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %51 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 7
  store i32 -1, i32* %53, align 4
  %54 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %55 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 8
  store i32 -1, i32* %57, align 4
  %58 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %59 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 9
  store i32 -1, i32* %61, align 4
  %62 = load i32, i32* @EVENT_STAT_UPDATE, align 4
  %63 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %64 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %63, i32 0, i32 0
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
