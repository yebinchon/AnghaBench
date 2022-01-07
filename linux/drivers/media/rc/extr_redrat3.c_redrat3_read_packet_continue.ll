; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_read_packet_continue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_read_packet_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"too much data for packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"bytes_read %d, pktlen %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.redrat3_dev*, i32)* @redrat3_read_packet_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrat3_read_packet_continue(%struct.redrat3_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.redrat3_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %7 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %6, i32 0, i32 1
  %8 = bitcast %struct.TYPE_4__* %7 to i8*
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %11 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %9, %12
  %14 = zext i32 %13 to i64
  %15 = icmp ugt i64 %14, 4
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %18 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %22 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %53

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %26 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr i8, i8* %24, i64 %28
  %30 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %31 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @memcpy(i8* %29, i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %37 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %41 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %44 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %47 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be16_to_cpu(i32 %50)
  %52 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
