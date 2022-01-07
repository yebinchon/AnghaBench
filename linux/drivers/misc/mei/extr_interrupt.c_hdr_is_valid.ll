; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_hdr_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_interrupt.c_hdr_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_msg_hdr = type { i64, i64, i64 }

@EBADMSG = common dso_local global i32 0, align 4
@MEI_SLOT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hdr_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdr_is_valid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_msg_hdr*, align 8
  store i32 %0, i32* %3, align 4
  %5 = bitcast i32* %3 to %struct.mei_msg_hdr*
  store %struct.mei_msg_hdr* %5, %struct.mei_msg_hdr** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.mei_msg_hdr*, %struct.mei_msg_hdr** %4, align 8
  %10 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @EBADMSG, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %8
  %17 = load %struct.mei_msg_hdr*, %struct.mei_msg_hdr** %4, align 8
  %18 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.mei_msg_hdr*, %struct.mei_msg_hdr** %4, align 8
  %23 = getelementptr inbounds %struct.mei_msg_hdr, %struct.mei_msg_hdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MEI_SLOT_SIZE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EBADMSG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %21, %16
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %27, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
