; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_channelinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_tdme_channelinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CA8210_SFR_LOTXCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tdme_channelinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdme_channelinit(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 25
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 167, i32* %5, align 4
  br label %45

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 23
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 168, i32* %5, align 4
  br label %44

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 22
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 169, i32* %5, align 4
  br label %43

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 20
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 170, i32* %5, align 4
  br label %42

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 17
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 171, i32* %5, align 4
  br label %41

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 16
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 172, i32* %5, align 4
  br label %40

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = icmp sge i32 %30, 14
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 173, i32* %5, align 4
  br label %39

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = icmp sge i32 %34, 12
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 174, i32* %5, align 4
  br label %38

37:                                               ; preds = %33
  store i32 175, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %36
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %28
  br label %41

41:                                               ; preds = %40, %24
  br label %42

42:                                               ; preds = %41, %20
  br label %43

43:                                               ; preds = %42, %16
  br label %44

44:                                               ; preds = %43, %12
  br label %45

45:                                               ; preds = %44, %8
  %46 = load i32, i32* @CA8210_SFR_LOTXCAL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @tdme_setsfr_request_sync(i32 1, i32 %46, i32 %47, i8* %48)
  ret i32 %49
}

declare dso_local i32 @tdme_setsfr_request_sync(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
