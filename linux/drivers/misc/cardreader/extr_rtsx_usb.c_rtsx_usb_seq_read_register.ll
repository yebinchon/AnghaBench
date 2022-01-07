; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_seq_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtsx_usb.c_rtsx_usb_seq_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_ucr = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@SEQ_READ = common dso_local global i32 0, align 4
@EP_BULK_OUT = common dso_local global i32 0, align 4
@EP_BULK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_ucr*, i32, i32, i32*)* @rtsx_usb_seq_read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsx_usb_seq_read_register(%struct.rtsx_ucr* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_ucr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtsx_ucr* %0, %struct.rtsx_ucr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @round_down(i32 %14, i32 4)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %12, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %91

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  %28 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SEQ_READ, align 4
  %32 = call i32 @rtsx_usb_seq_cmd_hdr(%struct.rtsx_ucr* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %34 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %35 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @EP_BULK_OUT, align 4
  %38 = call i32 @usb_sndbulkpipe(i32 %36, i32 %37)
  %39 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %40 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %33, i32 %38, i32* %41, i32 12, i32 0, i32* null, i32 100)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %91

47:                                               ; preds = %27
  %48 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %49 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %50 = getelementptr inbounds %struct.rtsx_ucr, %struct.rtsx_ucr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @EP_BULK_IN, align 4
  %53 = call i32 @usb_rcvbulkpipe(i32 %51, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr* %48, i32 %53, i32* %54, i32 %55, i32 0, i32* null, i32 100)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %91

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %24
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %87, %62
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load %struct.rtsx_ucr*, %struct.rtsx_ucr** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @rtsx_usb_read_register(%struct.rtsx_ucr* %68, i32 %73, i32* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %67
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %91

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %63

90:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %84, %59, %45, %21
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @rtsx_usb_seq_cmd_hdr(%struct.rtsx_ucr*, i32, i32, i32) #1

declare dso_local i32 @rtsx_usb_transfer_data(%struct.rtsx_ucr*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @rtsx_usb_read_register(%struct.rtsx_ucr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
