; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_spi_transfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_spi_transfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas_control = type { i64*, i64*, %struct.ca8210_priv* }
%struct.ca8210_priv = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CA8210_SPI_BUF_SIZE = common dso_local global i32 0, align 4
@SPI_NACK = common dso_local global i64 0, align 8
@SPI_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"ca8210 was busy during attempted write\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"IRQ servicing NACKd, dropping transfer\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"too many retries!\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"retried spi write\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"READ CMD DURING TX\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%#03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ca8210_spi_transfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca8210_spi_transfer_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cas_control*, align 8
  %4 = alloca %struct.ca8210_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.cas_control*
  store %struct.cas_control* %11, %struct.cas_control** %3, align 8
  %12 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %13 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %12, i32 0, i32 2
  %14 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  store %struct.ca8210_priv* %14, %struct.ca8210_priv** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @CA8210_SPI_BUF_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %20 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPI_NACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %1
  %27 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %28 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SPI_IDLE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %102

34:                                               ; preds = %26
  %35 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %36 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPI_NACK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %34, %1
  %43 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %44 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %49 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SPI_IDLE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %57 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @dev_warn(i32* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %62 = call i32 @kfree(%struct.cas_control* %61)
  store i32 1, i32* %9, align 4
  br label %166

63:                                               ; preds = %42
  %64 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %65 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 3
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %70 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %69, i32 0, i32 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %75 = call i32 @kfree(%struct.cas_control* %74)
  %76 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %77 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %76, i32 0, i32 2
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = call i32 @ca8210_remove(%struct.TYPE_3__* %78)
  store i32 1, i32* %9, align 4
  br label %166

80:                                               ; preds = %63
  %81 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %82 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* @CA8210_SPI_BUF_SIZE, align 4
  %85 = call i32 @memcpy(i32* %18, i64* %83, i32 %84)
  %86 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %87 = call i32 @kfree(%struct.cas_control* %86)
  %88 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %89 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* @CA8210_SPI_BUF_SIZE, align 4
  %92 = call i32 @ca8210_spi_transfer(%struct.TYPE_3__* %90, i32* %18, i32 %91)
  %93 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %94 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %98 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %97, i32 0, i32 2
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = call i32 @dev_info(i32* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %166

102:                                              ; preds = %34, %26
  %103 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %104 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SPI_IDLE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %112 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SPI_NACK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 1, i32* %5, align 4
  br label %119

119:                                              ; preds = %118, %110, %102
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %158

123:                                              ; preds = %120
  %124 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %125 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %124, i32 0, i32 2
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %152, %123
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %133 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 2
  %138 = icmp slt i64 %131, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %129
  %140 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %141 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %140, i32 0, i32 2
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %145 = getelementptr inbounds %struct.cas_control, %struct.cas_control* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %139
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %129

155:                                              ; preds = %129
  %156 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %157 = call i32 @ca8210_rx_done(%struct.cas_control* %156)
  br label %158

158:                                              ; preds = %155, %120
  %159 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %160 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %159, i32 0, i32 1
  %161 = call i32 @complete(i32* %160)
  %162 = load %struct.cas_control*, %struct.cas_control** %3, align 8
  %163 = call i32 @kfree(%struct.cas_control* %162)
  %164 = load %struct.ca8210_priv*, %struct.ca8210_priv** %4, align 8
  %165 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %158, %80, %68, %55
  %167 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %9, align 4
  switch i32 %168, label %170 [
    i32 0, label %169
    i32 1, label %169
  ]

169:                                              ; preds = %166, %166
  ret void

170:                                              ; preds = %166
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_info(i32*, i8*) #2

declare dso_local i32 @dev_warn(i32*, i8*) #2

declare dso_local i32 @kfree(%struct.cas_control*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @ca8210_remove(%struct.TYPE_3__*) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @ca8210_spi_transfer(%struct.TYPE_3__*, i32*, i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @ca8210_rx_done(%struct.cas_control*) #2

declare dso_local i32 @complete(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
