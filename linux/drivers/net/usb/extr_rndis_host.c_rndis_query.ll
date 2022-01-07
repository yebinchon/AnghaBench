; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_query.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.usb_interface = type { i32 }
%union.anon = type { i8* }
%struct.rndis_query = type { i8*, i8*, i8*, i8*, i8* }
%struct.rndis_msg_hdr = type { i32 }
%struct.rndis_query_c = type { i32, i32, i32 }

@RNDIS_MSG_QUERY = common dso_local global i32 0, align 4
@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RNDIS_MSG_QUERY(0x%08x) failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"RNDIS_MSG_QUERY(0x%08x) invalid response - off %d len %d\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*, i8*, i32, i32, i8**, i32*)* @rndis_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rndis_query(%struct.usbnet* %0, %struct.usb_interface* %1, i8* %2, i32 %3, i32 %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbnet*, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.anon, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %9, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = bitcast %union.anon* %17 to i8**
  store i8* %20, i8** %21, align 8
  %22 = bitcast %union.anon* %17 to %struct.rndis_query**
  %23 = load %struct.rndis_query*, %struct.rndis_query** %22, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 40, %25
  %27 = trunc i64 %26 to i32
  %28 = call i32 @memset(%struct.rndis_query* %23, i32 0, i32 %27)
  %29 = load i32, i32* @RNDIS_MSG_QUERY, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = bitcast %union.anon* %17 to %struct.rndis_query**
  %32 = load %struct.rndis_query*, %struct.rndis_query** %31, align 8
  %33 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %32, i32 0, i32 4
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 40, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @cpu_to_le32(i32 %37)
  %39 = bitcast %union.anon* %17 to %struct.rndis_query**
  %40 = load %struct.rndis_query*, %struct.rndis_query** %39, align 8
  %41 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %40, i32 0, i32 3
  store i8* %38, i8** %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = bitcast %union.anon* %17 to %struct.rndis_query**
  %45 = load %struct.rndis_query*, %struct.rndis_query** %44, align 8
  %46 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %45, i32 0, i32 2
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = bitcast %union.anon* %17 to %struct.rndis_query**
  %50 = load %struct.rndis_query*, %struct.rndis_query** %49, align 8
  %51 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %50, i32 0, i32 1
  store i8* %48, i8** %51, align 8
  %52 = call i8* @cpu_to_le32(i32 20)
  %53 = bitcast %union.anon* %17 to %struct.rndis_query**
  %54 = load %struct.rndis_query*, %struct.rndis_query** %53, align 8
  %55 = getelementptr inbounds %struct.rndis_query, %struct.rndis_query* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %57 = bitcast %union.anon* %17 to %struct.rndis_msg_hdr**
  %58 = load %struct.rndis_msg_hdr*, %struct.rndis_msg_hdr** %57, align 8
  %59 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %60 = call i32 @rndis_command(%struct.usbnet* %56, %struct.rndis_msg_hdr* %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp slt i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %7
  %67 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %68 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %67, i32 0, i32 0
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load i32, i32* %16, align 4
  store i32 %72, i32* %8, align 4
  br label %125

73:                                               ; preds = %7
  %74 = bitcast %union.anon* %17 to %struct.rndis_query_c**
  %75 = load %struct.rndis_query_c*, %struct.rndis_query_c** %74, align 8
  %76 = getelementptr inbounds %struct.rndis_query_c, %struct.rndis_query_c* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = bitcast %union.anon* %17 to %struct.rndis_query_c**
  %80 = load %struct.rndis_query_c*, %struct.rndis_query_c** %79, align 8
  %81 = getelementptr inbounds %struct.rndis_query_c, %struct.rndis_query_c* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 8, %84
  %86 = load i32, i32* %19, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %89 = icmp sgt i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %73
  br label %116

94:                                               ; preds = %73
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %19, align 4
  %100 = load i32*, i32** %15, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %116

104:                                              ; preds = %98, %94
  %105 = bitcast %union.anon* %17 to %struct.rndis_query_c**
  %106 = load %struct.rndis_query_c*, %struct.rndis_query_c** %105, align 8
  %107 = getelementptr inbounds %struct.rndis_query_c, %struct.rndis_query_c* %106, i32 0, i32 0
  %108 = bitcast i32* %107 to i8*
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8**, i8*** %14, align 8
  store i8* %111, i8** %112, align 8
  %113 = load i32, i32* %19, align 4
  %114 = load i32*, i32** %15, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %8, align 4
  br label %125

116:                                              ; preds = %103, %93
  %117 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %118 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %117, i32 0, i32 0
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %19, align 4
  %122 = call i32 (i32*, i8*, i32, i32, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* @EDOM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %116, %104, %66
  %126 = load i32, i32* %8, align 4
  ret i32 %126
}

declare dso_local i32 @memset(%struct.rndis_query*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rndis_command(%struct.usbnet*, %struct.rndis_msg_hdr*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
