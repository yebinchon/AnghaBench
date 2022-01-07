; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_ramtest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_ramtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@RX_END = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@buffer_write = common dso_local global i32 0, align 4
@TX_END = common dso_local global i32 0, align 4
@RX_START = common dso_local global i32 0, align 4
@RX_LEN = common dso_local global i32 0, align 4
@buffer_read = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%s: RAM failed with (%02X instead of %02X) at 0x%04X\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" - 0x%04X\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" - 0xffff\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8)* @ether3_ramtest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether3_ramtest(%struct.net_device* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %11 = load i32, i32* @RX_END, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmalloc(i32 %11, i32 %12)
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %137

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %5, align 1
  %20 = load i32, i32* @RX_END, align 4
  %21 = call i32 @memset(i8* %18, i8 zeroext %19, i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load i32, i32* @buffer_write, align 4
  %24 = call i32 @ether3_setbuffer(%struct.net_device* %22, i32 %23, i32 0)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @TX_END, align 4
  %28 = call i32 @ether3_writebuffer(%struct.net_device* %25, i8* %26, i32 %27)
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = load i32, i32* @buffer_write, align 4
  %31 = load i32, i32* @RX_START, align 4
  %32 = call i32 @ether3_setbuffer(%struct.net_device* %29, i32 %30, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @RX_START, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i32, i32* @RX_LEN, align 4
  %39 = call i32 @ether3_writebuffer(%struct.net_device* %33, i8* %37, i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %5, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* @RX_END, align 4
  %46 = call i32 @memset(i8* %40, i8 zeroext %44, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i32, i32* @buffer_read, align 4
  %49 = call i32 @ether3_setbuffer(%struct.net_device* %47, i32 %48, i32 0)
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @TX_END, align 4
  %53 = call i32 @ether3_readbuffer(%struct.net_device* %50, i8* %51, i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load i32, i32* @buffer_read, align 4
  %56 = load i32, i32* @RX_START, align 4
  %57 = call i32 @ether3_setbuffer(%struct.net_device* %54, i32 %55, i32 %56)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @RX_START, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32, i32* @RX_LEN, align 4
  %64 = call i32 @ether3_readbuffer(%struct.net_device* %58, i8* %62, i32 %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %125, %17
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @RX_END, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %128

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* %5, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %109

79:                                               ; preds = %69
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %83, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %82
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* %5, align 1
  %102 = zext i8 %101 to i32
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %100, i32 %102, i32 %103)
  store i32 2, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %91, %82, %79
  br label %124

109:                                              ; preds = %69
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %114, 1
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* %7, align 4
  %119 = sub nsw i32 %118, 1
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %112
  %122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %123

123:                                              ; preds = %121, %109
  br label %124

124:                                              ; preds = %123, %108
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %65

128:                                              ; preds = %65
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %128
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 @kfree(i8* %134)
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %133, %16
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i8 zeroext, i32) #1

declare dso_local i32 @ether3_setbuffer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ether3_writebuffer(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @ether3_readbuffer(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
