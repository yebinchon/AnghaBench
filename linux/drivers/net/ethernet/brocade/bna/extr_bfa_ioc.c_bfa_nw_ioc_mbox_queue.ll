; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_mbox_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_mbox_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__, %struct.bfa_ioc_mbox_mod }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_ioc_mbox_mod = type { i32 }
%struct.bfa_mbox_cmd = type { i32, i32, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfa_nw_ioc_mbox_queue(%struct.bfa_ioc* %0, %struct.bfa_mbox_cmd* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfa_ioc*, align 8
  %7 = alloca %struct.bfa_mbox_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bfa_ioc_mbox_mod*, align 8
  %11 = alloca i64, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %6, align 8
  store %struct.bfa_mbox_cmd* %1, %struct.bfa_mbox_cmd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %12, i32 0, i32 1
  store %struct.bfa_ioc_mbox_mod* %13, %struct.bfa_ioc_mbox_mod** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %7, align 8
  %19 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %10, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %7, align 8
  %26 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %25, i32 0, i32 1
  %27 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %10, align 8
  %28 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  store i32 1, i32* %5, align 4
  br label %50

30:                                               ; preds = %4
  %31 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %32 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @readl(i32 %34)
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %39, i32 0, i32 1
  %41 = load %struct.bfa_ioc_mbox_mod*, %struct.bfa_ioc_mbox_mod** %10, align 8
  %42 = getelementptr inbounds %struct.bfa_ioc_mbox_mod, %struct.bfa_ioc_mbox_mod* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %40, i32* %42)
  store i32 1, i32* %5, align 4
  br label %50

44:                                               ; preds = %30
  %45 = load %struct.bfa_ioc*, %struct.bfa_ioc** %6, align 8
  %46 = load %struct.bfa_mbox_cmd*, %struct.bfa_mbox_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.bfa_mbox_cmd, %struct.bfa_mbox_cmd* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bfa_ioc_mbox_send(%struct.bfa_ioc* %45, i32 %48, i32 4)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %38, %24
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @bfa_ioc_mbox_send(%struct.bfa_ioc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
