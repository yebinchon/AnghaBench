; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_int_reenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_int_reenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3_napi = type { i32, i32, i32, %struct.tg3* }
%struct.tg3 = type { i32 }

@TAGGED_STATUS = common dso_local global i32 0, align 4
@HOSTCC_MODE = common dso_local global i32 0, align 4
@HOSTCC_MODE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3_napi*)* @tg3_int_reenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_int_reenable(%struct.tg3_napi* %0) #0 {
  %2 = alloca %struct.tg3_napi*, align 8
  %3 = alloca %struct.tg3*, align 8
  store %struct.tg3_napi* %0, %struct.tg3_napi** %2, align 8
  %4 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %5 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %4, i32 0, i32 3
  %6 = load %struct.tg3*, %struct.tg3** %5, align 8
  store %struct.tg3* %6, %struct.tg3** %3, align 8
  %7 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %8 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %11 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %12, 24
  %14 = call i32 @tw32_mailbox(i32 %9, i32 %13)
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = load i32, i32* @TAGGED_STATUS, align 4
  %17 = call i32 @tg3_flag(%struct.tg3* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %1
  %20 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %21 = call i64 @tg3_has_work(%struct.tg3_napi* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* @HOSTCC_MODE, align 4
  %25 = load %struct.tg3*, %struct.tg3** %3, align 8
  %26 = getelementptr inbounds %struct.tg3, %struct.tg3* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HOSTCC_MODE_ENABLE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.tg3_napi*, %struct.tg3_napi** %2, align 8
  %31 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = call i32 @tw32(i32 %24, i32 %33)
  br label %35

35:                                               ; preds = %23, %19, %1
  ret void
}

declare dso_local i32 @tw32_mailbox(i32, i32) #1

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_has_work(%struct.tg3_napi*) #1

declare dso_local i32 @tw32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
