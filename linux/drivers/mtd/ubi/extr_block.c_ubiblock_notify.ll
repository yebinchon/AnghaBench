; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.ubi_notification = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UBI_STATIC_VOLUME = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ubiblock_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubiblock_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ubi_notification*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.ubi_notification*
  store %struct.ubi_notification* %9, %struct.ubi_notification** %7, align 8
  %10 = load i64, i64* %5, align 8
  switch i64 %10, label %32 [
    i64 131, label %11
    i64 130, label %12
    i64 129, label %16
    i64 128, label %20
  ]

11:                                               ; preds = %3
  br label %33

12:                                               ; preds = %3
  %13 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %14 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %13, i32 0, i32 0
  %15 = call i32 @ubiblock_remove(%struct.TYPE_3__* %14)
  br label %33

16:                                               ; preds = %3
  %17 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %18 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %17, i32 0, i32 0
  %19 = call i32 @ubiblock_resize(%struct.TYPE_3__* %18)
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %22 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UBI_STATIC_VOLUME, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.ubi_notification*, %struct.ubi_notification** %7, align 8
  %29 = getelementptr inbounds %struct.ubi_notification, %struct.ubi_notification* %28, i32 0, i32 0
  %30 = call i32 @ubiblock_resize(%struct.TYPE_3__* %29)
  br label %31

31:                                               ; preds = %27, %20
  br label %33

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32, %31, %16, %12, %11
  %34 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %34
}

declare dso_local i32 @ubiblock_remove(%struct.TYPE_3__*) #1

declare dso_local i32 @ubiblock_resize(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
