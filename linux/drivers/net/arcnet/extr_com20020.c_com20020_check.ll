; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020.c_com20020_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32, i32, i32, i32, i32, i32, i32 }

@RESETcfg = common dso_local global i32 0, align 4
@COM20020_REG_W_CONFIG = common dso_local global i32 0, align 4
@RESETtime = common dso_local global i32 0, align 4
@P1MODE = common dso_local global i32 0, align 4
@SUB_SETUP1 = common dso_local global i32 0, align 4
@COM20020_REG_W_XREG = common dso_local global i32 0, align 4
@SUB_SETUP2 = common dso_local global i32 0, align 4
@STARTIOcmd = common dso_local global i32 0, align 4
@COM20020_REG_W_COMMAND = common dso_local global i32 0, align 4
@SUB_NODE = common dso_local global i32 0, align 4
@COM20020_REG_R_STATUS = common dso_local global i32 0, align 4
@NORXflag = common dso_local global i32 0, align 4
@TXFREEflag = common dso_local global i32 0, align 4
@RESETflag = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"status invalid (%Xh).\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@D_INIT_REASONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"status after reset: %X\0A\00", align 1
@CFLAGScmd = common dso_local global i32 0, align 4
@RESETclear = common dso_local global i32 0, align 4
@CONFIGclear = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"status after reset acknowledged: %X\0A\00", align 1
@RDDATAflag = common dso_local global i32 0, align 4
@AUTOINCflag = common dso_local global i32 0, align 4
@COM20020_REG_W_ADDR_HI = common dso_local global i32 0, align 4
@COM20020_REG_W_ADDR_LO = common dso_local global i32 0, align 4
@COM20020_REG_RW_MEMDATA = common dso_local global i32 0, align 4
@TESTvalue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Signature byte not found (%02Xh != D1h).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @com20020_check(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.arcnet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %10)
  store %struct.arcnet_local* %11, %struct.arcnet_local** %6, align 8
  %12 = call i32 @XTOcfg(i32 3)
  %13 = load i32, i32* @RESETcfg, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @COM20020_REG_W_CONFIG, align 4
  %17 = call i32 @arcnet_outb(i32 %14, i32 %15, i32 %16)
  %18 = call i32 @udelay(i32 5)
  %19 = call i32 @XTOcfg(i32 3)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @COM20020_REG_W_CONFIG, align 4
  %22 = call i32 @arcnet_outb(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @RESETtime, align 4
  %24 = call i32 @mdelay(i32 %23)
  %25 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %26 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %32 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 1
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i32 [ 0, %29 ], [ %34, %30 ]
  %37 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %38 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %40 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 4
  %43 = or i32 %42, 8
  %44 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %45 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %47 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @P1MODE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %52 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @SUB_SETUP1, align 4
  %56 = call i32 @com20020_set_subaddress(%struct.arcnet_local* %53, i32 %54, i32 %55)
  %57 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %58 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @COM20020_REG_W_XREG, align 4
  %62 = call i32 @arcnet_outb(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %64 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %35
  %68 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @SUB_SETUP2, align 4
  %71 = call i32 @com20020_set_subaddress(%struct.arcnet_local* %68, i32 %69, i32 %70)
  %72 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %73 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @COM20020_REG_W_XREG, align 4
  %77 = call i32 @arcnet_outb(i32 %74, i32 %75, i32 %76)
  %78 = call i32 @mdelay(i32 1)
  %79 = load i32, i32* @STARTIOcmd, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @COM20020_REG_W_COMMAND, align 4
  %82 = call i32 @arcnet_outb(i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %67, %35
  %84 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %85 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 3
  %88 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %89 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 2
  %92 = or i32 %87, %91
  %93 = load i32, i32* @SUB_NODE, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %96 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %98 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @COM20020_REG_W_CONFIG, align 4
  %102 = call i32 @arcnet_outb(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @COM20020_REG_W_XREG, align 4
  %105 = call i32 @arcnet_outb(i32 66, i32 %103, i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @COM20020_REG_R_STATUS, align 4
  %108 = call i32 @arcnet_inb(i32 %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, 153
  %111 = load i32, i32* @NORXflag, align 4
  %112 = load i32, i32* @TXFREEflag, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @RESETflag, align 4
  %115 = or i32 %113, %114
  %116 = icmp ne i32 %110, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %83
  %118 = load i32, i32* @D_NORMAL, align 4
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @arc_printk(i32 %118, %struct.net_device* %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %168

124:                                              ; preds = %83
  %125 = load i32, i32* @D_INIT_REASONS, align 4
  %126 = load %struct.net_device*, %struct.net_device** %3, align 8
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @arc_printk(i32 %125, %struct.net_device* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @CFLAGScmd, align 4
  %130 = load i32, i32* @RESETclear, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @CONFIGclear, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* @COM20020_REG_W_COMMAND, align 4
  %136 = call i32 @arcnet_outb(i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @COM20020_REG_R_STATUS, align 4
  %139 = call i32 @arcnet_inb(i32 %137, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* @D_INIT_REASONS, align 4
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @arc_printk(i32 %140, %struct.net_device* %141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @RDDATAflag, align 4
  %145 = or i32 0, %144
  %146 = load i32, i32* @AUTOINCflag, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @COM20020_REG_W_ADDR_HI, align 4
  %150 = call i32 @arcnet_outb(i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @COM20020_REG_W_ADDR_LO, align 4
  %153 = call i32 @arcnet_outb(i32 0, i32 %151, i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @COM20020_REG_RW_MEMDATA, align 4
  %156 = call i32 @arcnet_inb(i32 %154, i32 %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @TESTvalue, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %124
  %161 = load i32, i32* @D_NORMAL, align 4
  %162 = load %struct.net_device*, %struct.net_device** %3, align 8
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @arc_printk(i32 %161, %struct.net_device* %162, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @ENODEV, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %168

167:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %160, %117
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arcnet_outb(i32, i32, i32) #1

declare dso_local i32 @XTOcfg(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @com20020_set_subaddress(%struct.arcnet_local*, i32, i32) #1

declare dso_local i32 @arcnet_inb(i32, i32) #1

declare dso_local i32 @arc_printk(i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
