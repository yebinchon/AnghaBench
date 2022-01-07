; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_found.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32 }
%struct.arcnet_local = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@com20020_command = common dso_local global i32 0, align 4
@com20020_status = common dso_local global i32 0, align 4
@com20020_setmask = common dso_local global i32 0, align 4
@com20020_reset = common dso_local global i32 0, align 4
@com20020_copy_to_card = common dso_local global i32 0, align 4
@com20020_copy_from_card = common dso_local global i32 0, align 4
@com20020_close = common dso_local global i32 0, align 4
@SUB_SETUP1 = common dso_local global i32 0, align 4
@COM20020_REG_W_XREG = common dso_local global i32 0, align 4
@ARC_CAN_10MBIT = common dso_local global i32 0, align 4
@SUB_SETUP2 = common dso_local global i32 0, align 4
@STARTIOcmd = common dso_local global i32 0, align 4
@COM20020_REG_W_COMMAND = common dso_local global i32 0, align 4
@SUB_NODE = common dso_local global i32 0, align 4
@COM20020_REG_W_CONFIG = common dso_local global i32 0, align 4
@arcnet_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"arcnet (COM20020)\00", align 1
@D_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Can't get IRQ %d!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: station %02Xh found at %03lXh, IRQ %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Using backplane mode.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Using extended timeout value of %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Using CKP %d - data rate %s\0A\00", align 1
@clockrates = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @com20020_found(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arcnet_local*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %11)
  store %struct.arcnet_local* %12, %struct.arcnet_local** %6, align 8
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %15 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @com20020_command, align 4
  %18 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %19 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @com20020_status, align 4
  %22 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %23 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @com20020_setmask, align 4
  %26 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %27 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @com20020_reset, align 4
  %30 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %31 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @com20020_copy_to_card, align 4
  %34 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %35 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @com20020_copy_from_card, align 4
  %38 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %39 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @com20020_close, align 4
  %42 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %43 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %2
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @arcnet_inb(i32 %52, i32 8)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %2
  %59 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @SUB_SETUP1, align 4
  %62 = call i32 @com20020_set_subaddress(%struct.arcnet_local* %59, i32 %60, i32 %61)
  %63 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %64 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @COM20020_REG_W_XREG, align 4
  %68 = call i32 @arcnet_outb(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %70 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @ARC_CAN_10MBIT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %58
  %76 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @SUB_SETUP2, align 4
  %79 = call i32 @com20020_set_subaddress(%struct.arcnet_local* %76, i32 %77, i32 %78)
  %80 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %81 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @COM20020_REG_W_XREG, align 4
  %85 = call i32 @arcnet_outb(i32 %82, i32 %83, i32 %84)
  %86 = call i32 @mdelay(i32 1)
  %87 = load i32, i32* @STARTIOcmd, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @COM20020_REG_W_COMMAND, align 4
  %90 = call i32 @arcnet_outb(i32 %87, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %75, %58
  %92 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %93 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 3
  %96 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %97 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 2
  %100 = or i32 %95, %99
  %101 = load i32, i32* @SUB_NODE, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %104 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %106 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @COM20020_REG_W_CONFIG, align 4
  %110 = call i32 @arcnet_outb(i32 %107, i32 %108, i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @COM20020_REG_W_XREG, align 4
  %118 = call i32 @arcnet_outb(i32 %115, i32 %116, i32 %117)
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @arcnet_interrupt, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.net_device*, %struct.net_device** %4, align 8
  %125 = call i64 @request_irq(i32 %121, i32 %122, i32 %123, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.net_device* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %91
  %128 = load i32, i32* @D_NORMAL, align 4
  %129 = load %struct.net_device*, %struct.net_device** %4, align 8
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %128, %struct.net_device* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @ENODEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %210

136:                                              ; preds = %91
  %137 = load i32, i32* @D_NORMAL, align 4
  %138 = load %struct.net_device*, %struct.net_device** %4, align 8
  %139 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %140 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.net_device*, %struct.net_device** %4, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %137, %struct.net_device* %138, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %146, i32 %149, i32 %152)
  %154 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %155 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %136
  %159 = load i32, i32* @D_NORMAL, align 4
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %159, %struct.net_device* %160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %158, %136
  %163 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %164 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 3
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load i32, i32* @D_NORMAL, align 4
  %169 = load %struct.net_device*, %struct.net_device** %4, align 8
  %170 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %171 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %168, %struct.net_device* %169, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %167, %162
  %175 = load i32, i32* @D_NORMAL, align 4
  %176 = load %struct.net_device*, %struct.net_device** %4, align 8
  %177 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %178 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 1
  %181 = load i32*, i32** @clockrates, align 8
  %182 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %183 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, 240
  %186 = ashr i32 %185, 4
  %187 = sub nsw i32 3, %186
  %188 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %189 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 15
  %192 = ashr i32 %191, 1
  %193 = add nsw i32 %187, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %181, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i32, %struct.net_device*, i8*, ...) @arc_printk(i32 %175, %struct.net_device* %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %180, i32 %196)
  %198 = load %struct.net_device*, %struct.net_device** %4, align 8
  %199 = call i64 @register_netdev(%struct.net_device* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %174
  %202 = load %struct.net_device*, %struct.net_device** %4, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.net_device*, %struct.net_device** %4, align 8
  %206 = call i32 @free_irq(i32 %204, %struct.net_device* %205)
  %207 = load i32, i32* @EIO, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %210

209:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %201, %127
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arcnet_inb(i32, i32) #1

declare dso_local i32 @com20020_set_subaddress(%struct.arcnet_local*, i32, i32) #1

declare dso_local i32 @arcnet_outb(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, ...) #1

declare dso_local i64 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
