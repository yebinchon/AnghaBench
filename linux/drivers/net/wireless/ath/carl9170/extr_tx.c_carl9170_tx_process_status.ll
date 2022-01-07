; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_process_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_process_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.carl9170_rsp = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"UU:\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_tx_process_status(%struct.ar9170* %0, %struct.carl9170_rsp* %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.carl9170_rsp*, align 8
  %5 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store %struct.carl9170_rsp* %1, %struct.carl9170_rsp** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %54, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %9 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %16 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 2
  %20 = add nsw i32 %19, 1
  %21 = icmp ugt i32 %14, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %13
  %26 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %27 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %28 = bitcast %struct.carl9170_rsp* %27 to i8*
  %29 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %30 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 4
  %34 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %28, i32 %33)
  br label %57

35:                                               ; preds = %13
  %36 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %37 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %38 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %46 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__carl9170_tx_process_status(%struct.ar9170* %36, i32 %44, i32 %52)
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %5, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %6

57:                                               ; preds = %25, %6
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i32) #1

declare dso_local i32 @__carl9170_tx_process_status(%struct.ar9170*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
