; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_lantiq-flash.c_ltq_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_lantiq-flash.c_ltq_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64, i64 }
%struct.TYPE_3__ = type { i32* }

@LTQ_NOR_PROBING = common dso_local global i64 0, align 8
@ebu_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.map_info*, i64)* @ltq_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ltq_read16(%struct.map_info* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.map_info*, %struct.map_info** %4, align 8
  %8 = getelementptr inbounds %struct.map_info, %struct.map_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @LTQ_NOR_PROBING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = xor i64 %13, 2
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @ebu_lock, i64 %16)
  %18 = load %struct.map_info*, %struct.map_info** %4, align 8
  %19 = getelementptr inbounds %struct.map_info, %struct.map_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %20, %21
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %24, i32* %27, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @ebu_lock, i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  ret i32* %31
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
