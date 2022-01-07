; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_untie_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_rx_untie_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.carl9170_rsp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"malformed firmware trap:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rxcmd:\00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, i32*, i32)* @carl9170_rx_untie_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_rx_untie_cmds(%struct.ar9170* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.carl9170_rsp*, align 8
  %8 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to i8*
  %19 = bitcast i8* %18 to %struct.carl9170_rsp*
  store %struct.carl9170_rsp* %19, %struct.carl9170_rsp** %7, align 8
  %20 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %21 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ugt i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %13
  br label %54

36:                                               ; preds = %13
  %37 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %38 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %39 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @carl9170_check_sequence(%struct.ar9170* %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %54

45:                                               ; preds = %36
  %46 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %47 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %48 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %49 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 4
  %53 = call i32 @carl9170_handle_command_response(%struct.ar9170* %46, %struct.carl9170_rsp* %47, i64 %52)
  br label %9

54:                                               ; preds = %44, %35, %9
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = call i32 (...) @net_ratelimit()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %76

65:                                               ; preds = %61
  %66 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %67 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wiphy_err(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %64, %65, %54
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @carl9170_check_sequence(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_handle_command_response(%struct.ar9170*, %struct.carl9170_rsp*, i64) #1

declare dso_local i32 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
