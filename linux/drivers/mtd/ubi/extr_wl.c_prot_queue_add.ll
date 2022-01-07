; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_prot_queue_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c_prot_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32* }
%struct.ubi_wl_entry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UBI_PROT_QUEUE_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"added PEB %d EC %d to the protection queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*, %struct.ubi_wl_entry*)* @prot_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prot_queue_add(%struct.ubi_device* %0, %struct.ubi_wl_entry* %1) #0 {
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca %struct.ubi_wl_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  store %struct.ubi_wl_entry* %1, %struct.ubi_wl_entry** %4, align 8
  %6 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %7 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @UBI_PROT_QUEUE_LEN, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UBI_PROT_QUEUE_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @ubi_assert(i32 %24)
  %26 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  %27 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %30 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @list_add_tail(i32* %28, i32* %34)
  %36 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  %37 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %4, align 8
  %40 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dbg_wl(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  ret void
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dbg_wl(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
