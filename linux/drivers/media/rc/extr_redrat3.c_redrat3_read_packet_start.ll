; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_read_packet_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_read_packet_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { i32, i32, %struct.redrat3_header*, i32 }
%struct.redrat3_header = type { i32, i32, i32 }
%struct.redrat3_error = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"packet length %u too large\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"bytes_read %d, pktlen %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"ignoring packet with type 0x%02x, len of %d, 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.redrat3_dev*, i32)* @redrat3_read_packet_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrat3_read_packet_start(%struct.redrat3_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.redrat3_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.redrat3_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.redrat3_error*, align 8
  %9 = alloca i32, align 4
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %11 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %10, i32 0, i32 2
  %12 = load %struct.redrat3_header*, %struct.redrat3_header** %11, align 8
  store %struct.redrat3_header* %12, %struct.redrat3_header** %5, align 8
  %13 = load %struct.redrat3_header*, %struct.redrat3_header** %5, align 8
  %14 = getelementptr inbounds %struct.redrat3_header, %struct.redrat3_header* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be16_to_cpu(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.redrat3_header*, %struct.redrat3_header** %5, align 8
  %18 = getelementptr inbounds %struct.redrat3_header, %struct.redrat3_header* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be16_to_cpu(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = icmp ugt i64 %22, 4
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %26 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_warn(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %76

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %68 [
    i32 129, label %32
    i32 128, label %49
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp uge i64 %34, 12
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %38 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %37, i32 0, i32 2
  %39 = load %struct.redrat3_header*, %struct.redrat3_header** %38, align 8
  %40 = bitcast %struct.redrat3_header* %39 to %struct.redrat3_error*
  store %struct.redrat3_error* %40, %struct.redrat3_error** %8, align 8
  %41 = load %struct.redrat3_error*, %struct.redrat3_error** %8, align 8
  %42 = getelementptr inbounds %struct.redrat3_error, %struct.redrat3_error* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be16_to_cpu(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @redrat3_dump_fw_error(%struct.redrat3_dev* %45, i32 %46)
  br label %48

48:                                               ; preds = %36, %32
  br label %76

49:                                               ; preds = %30
  %50 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %51 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %50, i32 0, i32 3
  %52 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %53 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %52, i32 0, i32 2
  %54 = load %struct.redrat3_header*, %struct.redrat3_header** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @memcpy(i32* %51, %struct.redrat3_header* %54, i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %59 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %61 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %64 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  br label %76

68:                                               ; preds = %30
  %69 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %70 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %24, %68, %49, %48
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @redrat3_dump_fw_error(%struct.redrat3_dev*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.redrat3_header*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
