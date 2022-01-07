; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_init_io_sq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_init_io_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.ena_com_create_io_ctx = type { i32 }
%struct.ena_com_io_sq = type { i32, i64, i64, i64, i64, i32, i64, i64, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_11__, %struct.TYPE_8__, i64 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64, i64, i8*, i64 }
%struct.TYPE_8__ = type { i8*, i32 }

@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENA_ADMIN_PLACEMENT_POLICY_DEV = common dso_local global i64 0, align 8
@ENA_COM_BOUNCE_BUFFER_CNTRL_CNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"bounce buffer memory allocation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*, %struct.ena_com_io_sq*)* @ena_com_init_io_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_init_io_sq(%struct.ena_com_dev* %0, %struct.ena_com_create_io_ctx* %1, %struct.ena_com_io_sq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.ena_com_create_io_ctx*, align 8
  %7 = alloca %struct.ena_com_io_sq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store %struct.ena_com_create_io_ctx* %1, %struct.ena_com_create_io_ctx** %6, align 8
  store %struct.ena_com_io_sq* %2, %struct.ena_com_io_sq** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %11 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %10, i32 0, i32 11
  %12 = call i32 @memset(%struct.TYPE_8__* %11, i32 0, i32 16)
  %13 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %14 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %17 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %16, i32 0, i32 12
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %19 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i64 4, i64 4
  %25 = trunc i64 %24 to i32
  %26 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %27 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %29 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %33 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %31, %34
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %37 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %99

41:                                               ; preds = %3
  %42 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %43 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_to_node(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %47 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @set_dev_node(i32 %48, i32 %51)
  %53 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %54 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %58 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @dma_alloc_coherent(i32 %55, i64 %56, i32* %59, i32 %60)
  %62 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %63 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %62, i32 0, i32 11
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %66 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @set_dev_node(i32 %67, i32 %68)
  %70 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %71 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %88, label %75

75:                                               ; preds = %41
  %76 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %77 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %81 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %80, i32 0, i32 11
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @dma_alloc_coherent(i32 %78, i64 %79, i32* %82, i32 %83)
  %85 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %86 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %85, i32 0, i32 11
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  br label %88

88:                                               ; preds = %75, %41
  %89 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %90 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %88
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %227

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %3
  %100 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %101 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ENA_ADMIN_PLACEMENT_POLICY_DEV, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %220

105:                                              ; preds = %99
  %106 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %107 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %111 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %110, i32 0, i32 10
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load i64, i64* @ENA_COM_BOUNCE_BUFFER_CNTRL_CNT, align 8
  %114 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %115 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %114, i32 0, i32 10
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %118 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %117, i32 0, i32 10
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 3
  store i64 0, i64* %119, align 8
  %120 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %121 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %120, i32 0, i32 10
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %125 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %124, i32 0, i32 10
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = mul i64 %123, %127
  store i64 %128, i64* %8, align 8
  %129 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %130 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dev_to_node(i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %134 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %6, align 8
  %137 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @set_dev_node(i32 %135, i32 %138)
  %140 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %141 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call i8* @devm_kzalloc(i32 %142, i64 %143, i32 %144)
  %146 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %147 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %146, i32 0, i32 10
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  store i8* %145, i8** %148, align 8
  %149 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %150 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @set_dev_node(i32 %151, i32 %152)
  %154 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %155 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %154, i32 0, i32 10
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %169, label %159

159:                                              ; preds = %105
  %160 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %161 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i64, i64* %8, align 8
  %164 = load i32, i32* @GFP_KERNEL, align 4
  %165 = call i8* @devm_kzalloc(i32 %162, i64 %163, i32 %164)
  %166 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %167 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %166, i32 0, i32 10
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 2
  store i8* %165, i8** %168, align 8
  br label %169

169:                                              ; preds = %159, %105
  %170 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %171 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %170, i32 0, i32 10
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %169
  %176 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %4, align 4
  br label %227

179:                                              ; preds = %169
  %180 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %181 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %180, i32 0, i32 8
  %182 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %183 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %182, i32 0, i32 0
  %184 = call i32 @memcpy(%struct.TYPE_9__* %181, %struct.TYPE_10__* %183, i32 24)
  %185 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %186 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %185, i32 0, i32 10
  %187 = call %struct.TYPE_8__* @ena_com_get_next_bounce_buffer(%struct.TYPE_11__* %186)
  %188 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %189 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %188, i32 0, i32 9
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  store %struct.TYPE_8__* %187, %struct.TYPE_8__** %190, align 8
  %191 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %192 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %196 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %195, i32 0, i32 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @memset(%struct.TYPE_8__* %194, i32 0, i32 %198)
  %200 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %201 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %200, i32 0, i32 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %205 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %204, i32 0, i32 9
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  %207 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %208 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %207, i32 0, i32 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %179
  %213 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %214 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %218 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %217, i32 0, i32 4
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %212, %179
  br label %220

220:                                              ; preds = %219, %99
  %221 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %222 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %221, i32 0, i32 7
  store i64 0, i64* %222, align 8
  %223 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %224 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %223, i32 0, i32 6
  store i64 0, i64* %224, align 8
  %225 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %7, align 8
  %226 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %225, i32 0, i32 5
  store i32 1, i32* %226, align 8
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %220, %175, %94
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local i32 @set_dev_node(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_8__* @ena_com_get_next_bounce_buffer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
