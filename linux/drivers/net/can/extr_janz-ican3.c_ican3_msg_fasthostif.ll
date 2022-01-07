; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_msg_fasthostif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_msg_fasthostif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32, i32, i32 }
%struct.ican3_msg = type { i32*, i32, i32 }

@MSG_INITFDPMQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*)* @ican3_msg_fasthostif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_msg_fasthostif(%struct.ican3_dev* %0) #0 {
  %2 = alloca %struct.ican3_dev*, align 8
  %3 = alloca %struct.ican3_msg, align 8
  %4 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %2, align 8
  %5 = call i32 @memset(%struct.ican3_msg* %3, i32 0, i32 16)
  %6 = load i32, i32* @MSG_INITFDPMQUEUE, align 4
  %7 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 2
  store i32 %6, i32* %7, align 4
  %8 = call i32 @cpu_to_le16(i32 8)
  %9 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 1
  store i32 %8, i32* %9, align 8
  %10 = load %struct.ican3_dev*, %struct.ican3_dev** %2, align 8
  %11 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DPM_PAGE_ADDR(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 255
  %16 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = lshr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = lshr i32 %31, 24
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ican3_dev*, %struct.ican3_dev** %2, align 8
  %38 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DPM_PAGE_ADDR(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 5
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %4, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %4, align 4
  %59 = lshr i32 %58, 24
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %3, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ican3_dev*, %struct.ican3_dev** %2, align 8
  %65 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 1
  %68 = zext i1 %67 to i32
  %69 = call i32 @WARN_ON(i32 %68)
  %70 = load %struct.ican3_dev*, %struct.ican3_dev** %2, align 8
  %71 = call i32 @ican3_send_msg(%struct.ican3_dev* %70, %struct.ican3_msg* %3)
  ret i32 %71
}

declare dso_local i32 @memset(%struct.ican3_msg*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @DPM_PAGE_ADDR(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ican3_send_msg(%struct.ican3_dev*, %struct.ican3_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
