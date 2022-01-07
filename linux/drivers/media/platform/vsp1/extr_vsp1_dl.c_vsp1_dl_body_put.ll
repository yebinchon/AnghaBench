; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_body_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_body_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_body = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_dl_body_put(%struct.vsp1_dl_body* %0) #0 {
  %2 = alloca %struct.vsp1_dl_body*, align 8
  %3 = alloca i64, align 8
  store %struct.vsp1_dl_body* %0, %struct.vsp1_dl_body** %2, align 8
  %4 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %2, align 8
  %5 = icmp ne %struct.vsp1_dl_body* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %35

7:                                                ; preds = %1
  %8 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %2, align 8
  %9 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %8, i32 0, i32 3
  %10 = call i32 @refcount_dec_and_test(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %35

13:                                               ; preds = %7
  %14 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %2, align 8
  %15 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %2, align 8
  %17 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %2, align 8
  %23 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %22, i32 0, i32 1
  %24 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %2, align 8
  %25 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %23, i32* %27)
  %29 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %2, align 8
  %30 = getelementptr inbounds %struct.vsp1_dl_body, %struct.vsp1_dl_body* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  br label %35

35:                                               ; preds = %13, %12, %6
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
