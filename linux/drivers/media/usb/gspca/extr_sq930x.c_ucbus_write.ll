; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_ucbus_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_ucbus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32*, i32 }
%struct.ucbus_write_cmd = type { i32, i32 }

@USB_BUF_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Bug: usb_buf overflow\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SQ930_CTRL_UCBUS_IO = common dso_local global i32 0, align 4
@D_USBO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ucbus v: %04x i: %04x %02x...%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"ucbus v: %04x i: %04x\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"ucbus_write failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, %struct.ucbus_write_cmd*, i32, i32)* @ucbus_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucbus_write(%struct.gspca_dev* %0, %struct.ucbus_write_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca %struct.ucbus_write_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store %struct.ucbus_write_cmd* %1, %struct.ucbus_write_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %155

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = mul nsw i32 %21, 3
  %23 = load i32, i32* @USB_BUF_SZ, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %27 = call i32 @gspca_err(%struct.gspca_dev* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %155

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %152, %32
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = load i32, i32* @SQ930_CTRL_UCBUS_IO, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %51 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 8
  %58 = or i32 %53, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %9, align 8
  br label %62

62:                                               ; preds = %66, %40
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %62
  %67 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %67, i32 1
  store %struct.ucbus_write_cmd* %68, %struct.ucbus_write_cmd** %6, align 8
  %69 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %70 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  %74 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %75 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 8
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %80 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %62

85:                                               ; preds = %62
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %88 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %86, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %93 = load i32, i32* @D_USBO, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %97 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 -1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %92, i32 %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95, i32 %100, i32 %103)
  br label %111

105:                                              ; preds = %85
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %107 = load i32, i32* @D_USBO, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 (%struct.gspca_dev*, i32, i8*, i32, i32, ...) @gspca_dbg(%struct.gspca_dev* %106, i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %91
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %113 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %116 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @usb_sndctrlpipe(i32 %117, i32 0)
  %119 = load i32, i32* @USB_DIR_OUT, align 4
  %120 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %127 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %131 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = ptrtoint i32* %129 to i64
  %134 = ptrtoint i32* %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = call i32 @usb_control_msg(i32 %114, i32 %118, i32 12, i32 %123, i32 %124, i32 %125, i32* %128, i32 %137, i32 500)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %111
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %146 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %155

147:                                              ; preds = %111
  %148 = call i32 @msleep(i32 30)
  %149 = load i32, i32* %7, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %155

152:                                              ; preds = %147
  %153 = load %struct.ucbus_write_cmd*, %struct.ucbus_write_cmd** %6, align 8
  %154 = getelementptr inbounds %struct.ucbus_write_cmd, %struct.ucbus_write_cmd* %153, i32 1
  store %struct.ucbus_write_cmd* %154, %struct.ucbus_write_cmd** %6, align 8
  br label %33

155:                                              ; preds = %18, %25, %141, %151
  ret void
}

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
